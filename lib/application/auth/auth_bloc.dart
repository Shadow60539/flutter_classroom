import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/auth/auth_failures.dart';
import 'package:classroom/domain/auth/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
@prod
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(AuthState.initial());
  static void addEventWithoutContext(AuthEvent e) =>
      BlocProvider.of<AuthBloc>(context).add(e);
  final IAuthRepo authRepo;

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
        );
        final failureOrSuccess = await authRepo.signUpUsingUsernameAndPassword(
            userName: e.userName, email: e.email, password: e.password);

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signUpUsingUsernameOption: Some(Left(l))),
          (r) => state.copyWith(
              signUpUsingUsernameOption: const Some(Right(unit))),
        );
      },
      signInUsingUsername: (e) async* {
        yield state.copyWith(
          signUpUsingUsernameOption: none(),
          signInUsingUsernameOption: none(),
          signInUsingGoogleOption: none(),
        );
        final failureOrSuccess = await authRepo.signInUsingUsernameAndPassword(
            userName: e.userName, password: e.password);

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signInUsingUsernameOption: Some(Left(l))),
          (r) => state.copyWith(
              signInUsingUsernameOption: const Some(Right(unit))),
        );
      },
      signInUsingGoogle: (e) async* {
        yield state.copyWith(
          signUpUsingUsernameOption: none(),
          signInUsingUsernameOption: none(),
          signInUsingGoogleOption: none(),
        );
        final failureOrSuccess = await authRepo.signInUsingGoogle();

        yield failureOrSuccess.fold(
          (l) => state.copyWith(signInUsingGoogleOption: Some(Left(l))),
          (r) =>
              state.copyWith(signInUsingGoogleOption: const Some(Right(unit))),
        );
      },
    );
  }
}
