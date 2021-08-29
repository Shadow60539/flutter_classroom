import 'package:classroom/application/auth/auth_bloc.dart';
import 'package:classroom/application/course/course_bloc.dart';
import 'package:classroom/core/services/navigation_service.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<CourseBloc>(),
        ),
      ],
      child: MaterialApp(
        key: _navigationService.navigationKey,
        home: const HomePage(),
      ),
    );
  }
}
