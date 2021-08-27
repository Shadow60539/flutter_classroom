import 'package:dartz/dartz.dart';

import 'auth_failures.dart';

abstract class IAuthRepo {
  /// Sign up using username and password
  Future<Either<AuthFailure, Unit>> signUpUsingUsernameAndPassword({
    required String userName,
    required String email,
    required String password,
  });

  /// Sign in using username and password
  Future<Either<AuthFailure, Unit>> signInUsingUsernameAndPassword({
    required String userName,
    required String password,
  });

  /// Sign in using google
  Future<Either<AuthFailure, Unit>> signInUsingGoogle();

  /// Register user role:- [Student, Teacher] 
  Future<Either<AuthFailure, Unit>> registerRole();
}
