import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_exception.freezed.dart';

@freezed
class AuthException with _$AuthException {
  const factory AuthException.noUser() = NoUserException;
  const factory AuthException.server() = AuthServerException;
  const factory AuthException.invalidEmail() = InvalidEmailException;
  const factory AuthException.invalidPassword() = InvalidPasswordException;
  const factory AuthException.unExpected() = UnExpectedAuthExpection;
  const factory AuthException.googleSignInAborted() =
      GoogleSignInAbortedExpection;
  const factory AuthException.googleSignInAccountRetrieve() =
      GoogleSignInAccountRetrieveException;
}