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
  Future<Either<AuthFailure, Unit>> signUpUsingUsernameAndPassword({
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
        box.put(HiveBoxNames.user, UserModel(roleId: 0, email: email));
        return const Right(unit);
      } else {
        return const Left(AuthFailure.userAlreadyExist());
      }
    } catch (e) {
      return const Left(AuthFailure.clientAuthFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUsingUsernameAndPassword(
      {required String userName, required String password}) async {
    final userCollection = firebaseFirestore.collection(USER_COLLECTION);
    final snapshot = await userCollection.doc(userName).get();

    String? email;

    if (snapshot.data() != null) {
      final Map<String, dynamic> data = snapshot.data()!;
      email = data["email"] as String;

      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return const Right(unit);
    } else {
      return const Left(AuthFailure.noUserFound());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUsingGoogle() async {
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

        // return UserModel.fromUserCredential(credential);
        return const Right(unit);
      } on PlatformException {
        throw const AuthFailure.googleSignInAccountRetrieve();
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerRole() async {
    // TODO: implement registerRole
    throw UnimplementedError();
  }
}
