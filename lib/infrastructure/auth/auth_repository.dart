import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/auth_failures.dart';
import 'package:classroom/domain/auth/i_auth_repository.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAuthRepo)
@prod
class AuthRepo extends IAuthRepo {
  AuthRepo(
    this.firebaseAuth,
    this.googleSignIn,
    this.firebaseFirestore,
    this.box,
  );

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final GoogleSignIn googleSignIn;
  final Box box;

  @override
  Future<Either<AuthFailure, UserModel>> signUpUsingUsernameAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      final userCollection = firebaseFirestore.collection(USER_COLLECTION);
      final snapshot = await userCollection.doc(userName).get();

      if (snapshot.data() == null) {
        final data = {"email": email};
        await userCollection.doc(userName).set(data);
        final UserCredential userCredential = await firebaseAuth
            .createUserWithEmailAndPassword(email: email, password: password);
        await box.put(
            HiveBoxNames.user,
            UserModel(
              email: email,
              id: userCredential.user!.uid,
              userName: userName,
            ));

        final UserModel userModel = UserModel.fromCredential(userCredential);

        return Right(userModel.copyWith(userName: userName));
      } else {
        return const Left(AuthFailure.userAlreadyExist());
      }
    } catch (e) {
      return const Left(AuthFailure.clientAuthFailure());
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInUsingUsernameAndPassword(
      {required String userName, required String password}) async {
    final userCollection = firebaseFirestore.collection(USER_COLLECTION);
    final snapshot = await userCollection.doc(userName).get();

    String? email;

    if (snapshot.data() != null) {
      final Map<String, dynamic> data = snapshot.data()!;
      email = data["email"] as String;

      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      await box.put(
          HiveBoxNames.user,
          UserModel(
            email: email,
            id: userCredential.user!.uid,
            userName: userName,
          ));

      final UserModel userModel = UserModel.fromCredential(userCredential);

      return Right(userModel.copyWith(userName: userName));
    } else {
      return const Left(AuthFailure.noUserFound());
    }
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInUsingGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount == null) {
      throw const AuthFailure.googleSignInAborted();
    } else {
      try {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential googleCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        final UserCredential credential =
            await firebaseAuth.signInWithCredential(googleCredential);

        final userCollection = firebaseFirestore.collection(USER_COLLECTION);
        final snapshot = await userCollection.doc(credential.user!.uid).get();
        String? userName;

        if (snapshot.data() != null) {
          userName = snapshot.data()!["userName"] as String;
        } else {
          final data = {
            "userName": credential.user!.uid,
          };
          await userCollection.doc(credential.user!.uid).set(data);
        }

        await box.put(
            HiveBoxNames.user,
            UserModel(
              email: credential.user!.email!,
              id: credential.user!.uid,
              userName: userName,
            ));

        final UserModel userModel = UserModel.fromCredential(credential);

        return Right(userModel.copyWith(userName: userName));
      } on PlatformException {
        throw const AuthFailure.googleSignInAccountRetrieve();
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerRole(int roleId) async {
    try {
      final UserModel userModel = box.get(HiveBoxNames.user) as UserModel;

      final String userName =
          userModel.userName == null ? userModel.id! : userModel.userName!;

      final data = {"role": roleId};

      final userCollection = firebaseFirestore.collection(USER_COLLECTION);
      await userCollection.doc(userName).update(data);
      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.clientAuthFailure());
    }
  }
}
