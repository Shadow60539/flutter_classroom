import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/auth/auth_failures.dart';
import 'package:classroom/domain/auth/i_auth_repository.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
@prod
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(AuthState.initial());
  final IAuthRepo authRepo;

  static void addEventWithoutContext(AuthEvent e) =>
      BlocProvider.of<AuthBloc>(context).add(e);

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      signUpUsingUsername: (e) async* {
        yield state.copyWith(
          signUpUsingUsernameOption: none(),
          signInUsingUsernameOption: none(),
          signInUsingGoogleOption: none(),
          registerRoleOption: none(),
        );
        final failureOrSuccess = await authRepo.signUpUsingUsernameAndPassword(
            userName: e.userName, email: e.email, password: e.password);

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signUpUsingUsernameOption: Some(Left(l))),
          (r) => state.copyWith(
            signUpUsingUsernameOption: const Some(Right(unit)),
            user: r,
          ),
        );
      },
      signInUsingUsername: (e) async* {
        yield state.copyWith(
          signUpUsingUsernameOption: none(),
          signInUsingUsernameOption: none(),
          signInUsingGoogleOption: none(),
          registerRoleOption: none(),
        );
        final failureOrSuccess = await authRepo.signInUsingUsernameAndPassword(
            userName: e.userName, password: e.password);

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signInUsingUsernameOption: Some(Left(l))),
          (r) => state.copyWith(
            signInUsingUsernameOption: const Some(Right(unit)),
            user: r,
          ),
        );
      },
      signInUsingGoogle: (e) async* {
        yield state.copyWith(
          signUpUsingUsernameOption: none(),
          signInUsingUsernameOption: none(),
          signInUsingGoogleOption: none(),
          registerRoleOption: none(),
        );
        final failureOrSuccess = await authRepo.signInUsingGoogle();

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signInUsingGoogleOption: Some(Left(l))),
          (r) => state.copyWith(
              signInUsingGoogleOption: const Some(Right(unit)), user: r),
        );
      },
      registerRole: (e) async* {
        yield state.copyWith(registerRoleOption: none());
        final failureOrSuccess = await authRepo.registerRole(e.roleId);

        yield failureOrSuccess.fold(
          (l) => state.copyWith(registerRoleOption: Some(Left(l))),
          (r) => state.copyWith(
            registerRoleOption: const Some(Right(unit)),
            user: state.user?.copyWith(roleId: e.roleId),
          ),
        );
      },
      switchRole: (_) async* {
        yield state.copyWith(switchRoleOption: none());
        final failureOrSuccess = await authRepo.switchRole();

        yield failureOrSuccess.fold(
          (l) => state.copyWith(switchRoleOption: Some(Left(l))),
          (r) {
            // Phoenix.rebirth(context);
            return state.copyWith(
              switchRoleOption: const Some(Right(unit)),
            );
          },
        );
      },
      signOut: (_) async* {
        yield state.copyWith(signOutOption: none());
        final failureOrSuccess = await authRepo.signOut();

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signOutOption: Some(Left(l))),
          (r) {
            CourseBloc.addEventWithoutContext(const CourseEvent.reset());
            return AuthState.initial();
          },
        );
      },
    );
  }
}
