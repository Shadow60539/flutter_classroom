import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  Box get userBox => Hive.box<UserModel>(HiveBoxNames.user);

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
}
