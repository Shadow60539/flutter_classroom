part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required UserModel? user,
    required Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
    required Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
    required Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
    required Option<Either<AuthFailure, Unit>> registerRoleOption,
    required Option<Either<AuthFailure, Unit>> switchRoleOption,
    required Option<Either<AuthFailure, Unit>> signOutOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        user: null,
        signUpUsingUsernameOption: none(),
        signInUsingUsernameOption: none(),
        signInUsingGoogleOption: none(),
        registerRoleOption: none(),
        signOutOption: none(),
        switchRoleOption: none(),
      );
}
