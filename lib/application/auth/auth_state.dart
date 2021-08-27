part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    // required User? user,
    required Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
    required Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
    required Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
    // required Option<Either<ValidationFailure, String>> emailValidationOption,
    // required Option<Either<ValidationFailure, String>> passwordValidationOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        // user: null,
        signUpUsingUsernameOption: none(),
        signInUsingUsernameOption: none(),
        signInUsingGoogleOption: none(),
        // emailValidationOption: none(),
        // passwordValidationOption: none(),
      );
}
