// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:classroom/application/auth/auth_bloc.dart' as i12;
import 'package:classroom/application/course/course_bloc.dart' as i13;
import 'package:classroom/core/services/navigation_service.dart' as i11;
import 'package:classroom/domain/auth/i_auth_repository.dart' as i7;
import 'package:classroom/domain/courses/i_courses_repo.dart' as i9;
import 'package:classroom/infrastructure/auth/auth_repository.dart' as i8;
import 'package:classroom/infrastructure/courses/course_repo.dart' as i10;
import 'package:classroom/infrastructure/injection_module.dart' as i14;
import 'package:cloud_firestore/cloud_firestore.dart' as i5;
import 'package:firebase_auth/firebase_auth.dart' as i4;
import 'package:get_it/get_it.dart' as i1;
import 'package:google_sign_in/google_sign_in.dart' as i6;
import 'package:hive/hive.dart' as i3;
import 'package:injectable/injectable.dart' as i2;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
i1.GetIt $initGetIt(i1.GetIt get,
    {String? environment, i2.EnvironmentFilter? environmentFilter,}) {
  final gh = i2.GetItHelper(get, environment, environmentFilter);
  final authInjectableModule = _$AuthInjectableModule();
  gh.lazySingleton<i3.Box<dynamic>>(() => authInjectableModule.userBox);
  gh.lazySingleton<i4.FirebaseAuth>(() => authInjectableModule.firebaseAuth);
  gh.lazySingleton<i5.FirebaseFirestore>(
      () => authInjectableModule.firebaseFirestore,);
  gh.lazySingleton<i6.GoogleSignIn>(() => authInjectableModule.googleSignIn);
  gh.factory<i7.IAuthRepo>(
      () => i8.AuthRepo(get<i4.FirebaseAuth>(), get<i6.GoogleSignIn>(),
          get<i5.FirebaseFirestore>(), get<i3.Box<dynamic>>(),),
      registerFor: {_prod},);
  gh.factory<i9.ICoursesRepo>(() => i10.CourseRepo(get<i3.Box<dynamic>>()),
      registerFor: {_prod},);
  gh.lazySingleton<i11.NavigationService>(() => i11.NavigationService());
  gh.factory<i12.AuthBloc>(() => i12.AuthBloc(get<i7.IAuthRepo>()),
      registerFor: {_prod},);
  gh.factory<i13.CourseBloc>(() => i13.CourseBloc(get<i9.ICoursesRepo>()),
      registerFor: {_prod},);
  return get;
}

class _$AuthInjectableModule extends i14.AuthInjectableModule {}
