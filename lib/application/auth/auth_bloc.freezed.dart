// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',);

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _SignUpUsingUsername signUpUsingUsername(
      {required String email,
      required String userName,
      required String password,}) {
    return _SignUpUsingUsername(
      email: email,
      userName: userName,
      password: password,
    );
  }

  _SignInUsingUsername signInUsingUsername(
      {required String userName, required String password,}) {
    return _SignInUsingUsername(
      userName: userName,
      password: password,
    );
  }

  _SignInUsingGoogle signInUsingGoogle() {
    return const _SignInUsingGoogle();
  }

  _RegisterUserRole registerRole(int roleId) {
    return _RegisterUserRole(
      roleId,
    );
  }

  _SwitchRole switchRole() {
    return const _SwitchRole();
  }

  _SignOut signOut() {
    return const _SignOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$SignUpUsingUsernameCopyWith<$Res> {
  factory _$SignUpUsingUsernameCopyWith(_SignUpUsingUsername value,
          $Res Function(_SignUpUsingUsername) then,) =
      __$SignUpUsingUsernameCopyWithImpl<$Res>;
  $Res call({String email, String userName, String password});
}

/// @nodoc
class __$SignUpUsingUsernameCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignUpUsingUsernameCopyWith<$Res> {
  __$SignUpUsingUsernameCopyWithImpl(
      _SignUpUsingUsername value, $Res Function(_SignUpUsingUsername) then,)
      : super(value, (v) => then(v as _SignUpUsingUsername));

  @override
  _SignUpUsingUsername get _value => super._value as _SignUpUsingUsername;

  @override
  $Res call({
    Object? email = freezed,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUpUsingUsername(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_SignUpUsingUsername implements _SignUpUsingUsername {
  const _$_SignUpUsingUsername(
      {required this.email, required this.userName, required this.password,});

  @override
  final String email;
  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpUsingUsername(email: $email, userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpUsingUsername &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignUpUsingUsernameCopyWith<_SignUpUsingUsername> get copyWith =>
      __$SignUpUsingUsernameCopyWithImpl<_SignUpUsingUsername>(
          this, _$identity,);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return signUpUsingUsername(email, userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUpUsingUsername != null) {
      return signUpUsingUsername(email, userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signUpUsingUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signUpUsingUsername != null) {
      return signUpUsingUsername(this);
    }
    return orElse();
  }
}

abstract class _SignUpUsingUsername implements AuthEvent {
  const factory _SignUpUsingUsername(
      {required String email,
      required String userName,
      required String password,}) = _$_SignUpUsingUsername;

  String get email => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpUsingUsernameCopyWith<_SignUpUsingUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInUsingUsernameCopyWith<$Res> {
  factory _$SignInUsingUsernameCopyWith(_SignInUsingUsername value,
          $Res Function(_SignInUsingUsername) then,) =
      __$SignInUsingUsernameCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

/// @nodoc
class __$SignInUsingUsernameCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInUsingUsernameCopyWith<$Res> {
  __$SignInUsingUsernameCopyWithImpl(
      _SignInUsingUsername value, $Res Function(_SignInUsingUsername) then,)
      : super(value, (v) => then(v as _SignInUsingUsername));

  @override
  _SignInUsingUsername get _value => super._value as _SignInUsingUsername;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInUsingUsername(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_SignInUsingUsername implements _SignInUsingUsername {
  const _$_SignInUsingUsername(
      {required this.userName, required this.password,});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInUsingUsername(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInUsingUsername &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInUsingUsernameCopyWith<_SignInUsingUsername> get copyWith =>
      __$SignInUsingUsernameCopyWithImpl<_SignInUsingUsername>(
          this, _$identity,);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return signInUsingUsername(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInUsingUsername != null) {
      return signInUsingUsername(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signInUsingUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signInUsingUsername != null) {
      return signInUsingUsername(this);
    }
    return orElse();
  }
}

abstract class _SignInUsingUsername implements AuthEvent {
  const factory _SignInUsingUsername(
      {required String userName,
      required String password,}) = _$_SignInUsingUsername;

  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInUsingUsernameCopyWith<_SignInUsingUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInUsingGoogleCopyWith<$Res> {
  factory _$SignInUsingGoogleCopyWith(
          _SignInUsingGoogle value, $Res Function(_SignInUsingGoogle) then,) =
      __$SignInUsingGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInUsingGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInUsingGoogleCopyWith<$Res> {
  __$SignInUsingGoogleCopyWithImpl(
      _SignInUsingGoogle value, $Res Function(_SignInUsingGoogle) then,)
      : super(value, (v) => then(v as _SignInUsingGoogle));

  @override
  _SignInUsingGoogle get _value => super._value as _SignInUsingGoogle;
}

/// @nodoc

class _$_SignInUsingGoogle implements _SignInUsingGoogle {
  const _$_SignInUsingGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInUsingGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInUsingGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return signInUsingGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signInUsingGoogle != null) {
      return signInUsingGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signInUsingGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signInUsingGoogle != null) {
      return signInUsingGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInUsingGoogle implements AuthEvent {
  const factory _SignInUsingGoogle() = _$_SignInUsingGoogle;
}

/// @nodoc
abstract class _$RegisterUserRoleCopyWith<$Res> {
  factory _$RegisterUserRoleCopyWith(
          _RegisterUserRole value, $Res Function(_RegisterUserRole) then,) =
      __$RegisterUserRoleCopyWithImpl<$Res>;
  $Res call({int roleId});
}

/// @nodoc
class __$RegisterUserRoleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegisterUserRoleCopyWith<$Res> {
  __$RegisterUserRoleCopyWithImpl(
      _RegisterUserRole value, $Res Function(_RegisterUserRole) then,)
      : super(value, (v) => then(v as _RegisterUserRole));

  @override
  _RegisterUserRole get _value => super._value as _RegisterUserRole;

  @override
  $Res call({
    Object? roleId = freezed,
  }) {
    return _then(_RegisterUserRole(
      roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
    ),);
  }
}

/// @nodoc

class _$_RegisterUserRole implements _RegisterUserRole {
  const _$_RegisterUserRole(this.roleId);

  @override
  final int roleId;

  @override
  String toString() {
    return 'AuthEvent.registerRole(roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterUserRole &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roleId);

  @JsonKey(ignore: true)
  @override
  _$RegisterUserRoleCopyWith<_RegisterUserRole> get copyWith =>
      __$RegisterUserRoleCopyWithImpl<_RegisterUserRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return registerRole(roleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (registerRole != null) {
      return registerRole(roleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return registerRole(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (registerRole != null) {
      return registerRole(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserRole implements AuthEvent {
  const factory _RegisterUserRole(int roleId) = _$_RegisterUserRole;

  int get roleId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterUserRoleCopyWith<_RegisterUserRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchRoleCopyWith<$Res> {
  factory _$SwitchRoleCopyWith(
          _SwitchRole value, $Res Function(_SwitchRole) then,) =
      __$SwitchRoleCopyWithImpl<$Res>;
}

/// @nodoc
class __$SwitchRoleCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SwitchRoleCopyWith<$Res> {
  __$SwitchRoleCopyWithImpl(
      _SwitchRole value, $Res Function(_SwitchRole) then,)
      : super(value, (v) => then(v as _SwitchRole));

  @override
  _SwitchRole get _value => super._value as _SwitchRole;
}

/// @nodoc

class _$_SwitchRole implements _SwitchRole {
  const _$_SwitchRole();

  @override
  String toString() {
    return 'AuthEvent.switchRole()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SwitchRole);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return switchRole();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (switchRole != null) {
      return switchRole();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return switchRole(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (switchRole != null) {
      return switchRole(this);
    }
    return orElse();
  }
}

abstract class _SwitchRole implements AuthEvent {
  const factory _SwitchRole() = _$_SwitchRole;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut value, $Res Function(_SignOut) then)
      : super(value, (v) => then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String userName, String password)
        signUpUsingUsername,
    required TResult Function(String userName, String password)
        signInUsingUsername,
    required TResult Function() signInUsingGoogle,
    required TResult Function(int roleId) registerRole,
    required TResult Function() switchRole,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String userName, String password)?
        signUpUsingUsername,
    TResult Function(String userName, String password)? signInUsingUsername,
    TResult Function()? signInUsingGoogle,
    TResult Function(int roleId)? registerRole,
    TResult Function()? switchRole,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpUsingUsername value) signUpUsingUsername,
    required TResult Function(_SignInUsingUsername value) signInUsingUsername,
    required TResult Function(_SignInUsingGoogle value) signInUsingGoogle,
    required TResult Function(_RegisterUserRole value) registerRole,
    required TResult Function(_SwitchRole value) switchRole,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpUsingUsername value)? signUpUsingUsername,
    TResult Function(_SignInUsingUsername value)? signInUsingUsername,
    TResult Function(_SignInUsingGoogle value)? signInUsingGoogle,
    TResult Function(_RegisterUserRole value)? registerRole,
    TResult Function(_SwitchRole value)? switchRole,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required UserModel? user,
      required Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
      required Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
      required Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
      required Option<Either<AuthFailure, Unit>> registerRoleOption,
      required Option<Either<AuthFailure, Unit>> switchRoleOption,
      required Option<Either<AuthFailure, Unit>> signOutOption,}) {
    return _AuthState(
      user: user,
      signUpUsingUsernameOption: signUpUsingUsernameOption,
      signInUsingUsernameOption: signInUsingUsernameOption,
      signInUsingGoogleOption: signInUsingGoogleOption,
      registerRoleOption: registerRoleOption,
      switchRoleOption: switchRoleOption,
      signOutOption: signOutOption,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  UserModel? get user => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signUpUsingUsernameOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signInUsingUsernameOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signInUsingGoogleOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get registerRoleOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get switchRoleOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signOutOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? user,
      Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
      Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
      Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
      Option<Either<AuthFailure, Unit>> registerRoleOption,
      Option<Either<AuthFailure, Unit>> switchRoleOption,
      Option<Either<AuthFailure, Unit>> signOutOption,});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? signUpUsingUsernameOption = freezed,
    Object? signInUsingUsernameOption = freezed,
    Object? signInUsingGoogleOption = freezed,
    Object? registerRoleOption = freezed,
    Object? switchRoleOption = freezed,
    Object? signOutOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      signUpUsingUsernameOption: signUpUsingUsernameOption == freezed
          ? _value.signUpUsingUsernameOption
          : signUpUsingUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signInUsingUsernameOption: signInUsingUsernameOption == freezed
          ? _value.signInUsingUsernameOption
          : signInUsingUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signInUsingGoogleOption: signInUsingGoogleOption == freezed
          ? _value.signInUsingGoogleOption
          : signInUsingGoogleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      registerRoleOption: registerRoleOption == freezed
          ? _value.registerRoleOption
          : registerRoleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      switchRoleOption: switchRoleOption == freezed
          ? _value.switchRoleOption
          : switchRoleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signOutOption: signOutOption == freezed
          ? _value.signOutOption
          : signOutOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ),);
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then,) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? user,
      Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
      Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
      Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
      Option<Either<AuthFailure, Unit>> registerRoleOption,
      Option<Either<AuthFailure, Unit>> switchRoleOption,
      Option<Either<AuthFailure, Unit>> signOutOption,});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState value, $Res Function(_AuthState) then)
      : super(value, (v) => then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? user = freezed,
    Object? signUpUsingUsernameOption = freezed,
    Object? signInUsingUsernameOption = freezed,
    Object? signInUsingGoogleOption = freezed,
    Object? registerRoleOption = freezed,
    Object? switchRoleOption = freezed,
    Object? signOutOption = freezed,
  }) {
    return _then(_AuthState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      signUpUsingUsernameOption: signUpUsingUsernameOption == freezed
          ? _value.signUpUsingUsernameOption
          : signUpUsingUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signInUsingUsernameOption: signInUsingUsernameOption == freezed
          ? _value.signInUsingUsernameOption
          : signInUsingUsernameOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signInUsingGoogleOption: signInUsingGoogleOption == freezed
          ? _value.signInUsingGoogleOption
          : signInUsingGoogleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      registerRoleOption: registerRoleOption == freezed
          ? _value.registerRoleOption
          : registerRoleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      switchRoleOption: switchRoleOption == freezed
          ? _value.switchRoleOption
          : switchRoleOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signOutOption: signOutOption == freezed
          ? _value.signOutOption
          : signOutOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ),);
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.user,
      required this.signUpUsingUsernameOption,
      required this.signInUsingUsernameOption,
      required this.signInUsingGoogleOption,
      required this.registerRoleOption,
      required this.switchRoleOption,
      required this.signOutOption,});

  @override
  final UserModel? user;
  @override
  final Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption;
  @override
  final Option<Either<AuthFailure, Unit>> signInUsingUsernameOption;
  @override
  final Option<Either<AuthFailure, Unit>> signInUsingGoogleOption;
  @override
  final Option<Either<AuthFailure, Unit>> registerRoleOption;
  @override
  final Option<Either<AuthFailure, Unit>> switchRoleOption;
  @override
  final Option<Either<AuthFailure, Unit>> signOutOption;

  @override
  String toString() {
    return 'AuthState(user: $user, signUpUsingUsernameOption: $signUpUsingUsernameOption, signInUsingUsernameOption: $signInUsingUsernameOption, signInUsingGoogleOption: $signInUsingGoogleOption, registerRoleOption: $registerRoleOption, switchRoleOption: $switchRoleOption, signOutOption: $signOutOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.signUpUsingUsernameOption,
                    signUpUsingUsernameOption,) ||
                const DeepCollectionEquality().equals(
                    other.signUpUsingUsernameOption,
                    signUpUsingUsernameOption,)) &&
            (identical(other.signInUsingUsernameOption,
                    signInUsingUsernameOption,) ||
                const DeepCollectionEquality().equals(
                    other.signInUsingUsernameOption,
                    signInUsingUsernameOption,)) &&
            (identical(
                    other.signInUsingGoogleOption, signInUsingGoogleOption,) ||
                const DeepCollectionEquality().equals(
                    other.signInUsingGoogleOption, signInUsingGoogleOption,)) &&
            (identical(other.registerRoleOption, registerRoleOption) ||
                const DeepCollectionEquality()
                    .equals(other.registerRoleOption, registerRoleOption)) &&
            (identical(other.switchRoleOption, switchRoleOption) ||
                const DeepCollectionEquality()
                    .equals(other.switchRoleOption, switchRoleOption)) &&
            (identical(other.signOutOption, signOutOption) ||
                const DeepCollectionEquality()
                    .equals(other.signOutOption, signOutOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(signUpUsingUsernameOption) ^
      const DeepCollectionEquality().hash(signInUsingUsernameOption) ^
      const DeepCollectionEquality().hash(signInUsingGoogleOption) ^
      const DeepCollectionEquality().hash(registerRoleOption) ^
      const DeepCollectionEquality().hash(switchRoleOption) ^
      const DeepCollectionEquality().hash(signOutOption);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required UserModel? user,
      required Option<Either<AuthFailure, Unit>> signUpUsingUsernameOption,
      required Option<Either<AuthFailure, Unit>> signInUsingUsernameOption,
      required Option<Either<AuthFailure, Unit>> signInUsingGoogleOption,
      required Option<Either<AuthFailure, Unit>> registerRoleOption,
      required Option<Either<AuthFailure, Unit>> switchRoleOption,
      required Option<Either<AuthFailure, Unit>> signOutOption,}) = _$_AuthState;

  @override
  UserModel? get user => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get signUpUsingUsernameOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get signInUsingUsernameOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get signInUsingGoogleOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get registerRoleOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get switchRoleOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get signOutOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
