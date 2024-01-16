import 'dart:async';

import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/auth/auth_failures.dart';
import 'package:classroom/domain/auth/i_auth_repository.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
@prod
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(AuthState.initial()) {
    on<_SignUpUsingUsername>(_onSignUpUsingUsername);
    on<_SignInUsingUsername>(_onSignInUsingUsername);
    on<_SignInUsingGoogle>(_onSignInUsingGoogle);
    on<_RegisterUserRole>(_onRegisterUserRole);
    on<_SwitchRole>(_onSwitchRole);
    on<_SignOut>(_onSignOut);
  }
  final IAuthRepo authRepo;

  static void addEventWithoutContext(AuthEvent e) =>
      BlocProvider.of<AuthBloc>(context).add(e);

  FutureOr<void> _onSignUpUsingUsername(
    _SignUpUsingUsername e,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        signUpUsingUsernameOption: none(),
        signInUsingUsernameOption: none(),
        signInUsingGoogleOption: none(),
        registerRoleOption: none(),
      ),
    );

    final failureOrSuccess = await authRepo.signUpUsingUsernameAndPassword(
      userName: e.userName,
      email: e.email,
      password: e.password,
    );

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(signUpUsingUsernameOption: Some(Left(l))),
        (r) => state.copyWith(
          signUpUsingUsernameOption: const Some(Right(unit)),
          user: r,
        ),
      ),
    );
  }

  FutureOr<void> _onSignInUsingUsername(
      _SignInUsingUsername e, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        signUpUsingUsernameOption: none(),
        signInUsingUsernameOption: none(),
        signInUsingGoogleOption: none(),
        registerRoleOption: none(),
      ),
    );
    final failureOrSuccess = await authRepo.signInUsingUsernameAndPassword(
      userName: e.userName,
      password: e.password,
    );

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(signInUsingUsernameOption: Some(Left(l))),
        (r) => state.copyWith(
          signInUsingUsernameOption: const Some(Right(unit)),
          user: r,
        ),
      ),
    );
  }

  FutureOr<void> _onSignInUsingGoogle(
      _SignInUsingGoogle e, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        signUpUsingUsernameOption: none(),
        signInUsingUsernameOption: none(),
        signInUsingGoogleOption: none(),
        registerRoleOption: none(),
      ),
    );
    final failureOrSuccess = await authRepo.signInUsingGoogle();

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(signInUsingGoogleOption: Some(Left(l))),
        (r) => state.copyWith(
          signInUsingGoogleOption: const Some(Right(unit)),
          user: r,
        ),
      ),
    );
  }

  FutureOr<void> _onRegisterUserRole(
      _RegisterUserRole e, Emitter<AuthState> emit) async {
    emit(state.copyWith(registerRoleOption: none()));
    final failureOrSuccess = await authRepo.registerRole(e.roleId);

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(registerRoleOption: Some(Left(l))),
        (r) => state.copyWith(
          registerRoleOption: const Some(Right(unit)),
          user: state.user?.copyWith(roleId: e.roleId),
        ),
      ),
    );
  }

  FutureOr<void> _onSwitchRole(_SwitchRole e, Emitter<AuthState> emit) async {
    emit(state.copyWith(switchRoleOption: none()));
    final failureOrSuccess = await authRepo.switchRole();

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(switchRoleOption: Some(Left(l))),
        (r) {
          // Phoenix.rebirth(context);
          return state.copyWith(
            switchRoleOption: const Some(Right(unit)),
          );
        },
      ),
    );
  }

  FutureOr<void> _onSignOut(_SignOut e, Emitter<AuthState> emit) async {
    emit(state.copyWith(signOutOption: none()));
    final failureOrSuccess = await authRepo.signOut();

    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(signOutOption: Some(Left(l))),
        (r) {
          CourseBloc.addEventWithoutContext(const CourseEvent.reset());
          return AuthState.initial();
        },
      ),
    );
  }
}
