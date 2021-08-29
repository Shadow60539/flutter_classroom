// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/course/course_bloc.dart' as _i13;
import 'core/services/navigation_service.dart' as _i11;
import 'domain/auth/i_auth_repository.dart' as _i7;
import 'domain/courses/i_courses_repo.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i8;
import 'infrastructure/courses/course_repo.dart' as _i10;
import 'infrastructure/injection_module.dart' as _i14;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final authInjectableModule = _$AuthInjectableModule();
  gh.lazySingleton<_i3.Box<dynamic>>(() => authInjectableModule.userBox);
  gh.lazySingleton<_i4.FirebaseAuth>(() => authInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => authInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => authInjectableModule.googleSignIn);
  gh.factory<_i7.IAuthRepo>(
      () => _i8.AuthRepo(get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>(),
          get<_i5.FirebaseFirestore>(), get<_i3.Box<dynamic>>()),
      registerFor: {_prod});
  gh.factory<_i9.ICoursesRepo>(() => _i10.CourseRepo(), registerFor: {_prod});
  gh.lazySingleton<_i11.NavigationService>(() => _i11.NavigationService());
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i7.IAuthRepo>()),
      registerFor: {_prod});
  gh.factory<_i13.CourseBloc>(() => _i13.CourseBloc(get<_i9.ICoursesRepo>()),
      registerFor: {_prod});
  return get;
}

class _$AuthInjectableModule extends _i14.AuthInjectableModule {}
