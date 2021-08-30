import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmail() = _InvalidEmailFailure;
  const factory AuthFailure.invalidPassword() = _InvalidPasswordFailure;
  const factory AuthFailure.noUserFound() = _NoUserFailure;
  const factory AuthFailure.userAlreadyExist() = _UserAlreadyExistFailure;
  const factory AuthFailure.usernameAlreadyTaken() = _UsernameAlreadyTakenFailure;
  const factory AuthFailure.clientAuthFailure() = _ClientAuthFailure;
  const factory AuthFailure.server() = _AuthServerFailure;
  const factory AuthFailure.unexpected() = _UnexpectedAuthFailure;
  const factory AuthFailure.googleSignInAborted() = _GoogleSignInAbortedFailure;
  const factory AuthFailure.googleSignInAccountRetrieve() =
      _GoogleSignInAccountRetrieveFailure;
}
