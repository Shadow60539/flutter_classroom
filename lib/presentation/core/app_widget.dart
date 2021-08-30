import 'package:classroom/core/services/navigation_service.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/auth/pages/auth_checker_page.dart';
import 'package:classroom/presentation/auth/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classroom/application/auth/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            key: _navigationService.navigationKey,
            home: const SignupPage(),
          );
        },
      ),
    );
  }
}
