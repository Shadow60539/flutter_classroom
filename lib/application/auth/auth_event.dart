part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUpUsingUsername({
    required String email,
    required String userName,
    required String password,
  }) = _SignUpUsingUsername;

  const factory AuthEvent.signInUsingUsername({
    required String userName,
    required String password,
  }) = _SignInUsingUsername;

  const factory AuthEvent.signInUsingGoogle() = _SignInUsingGoogle;
  const factory AuthEvent.registerRole(int roleId) = _RegisterUserRole;
  const factory AuthEvent.switchRole() = _SwitchRole;
  const factory AuthEvent.signOut() = _SignOut;
}
