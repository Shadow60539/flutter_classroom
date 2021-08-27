import 'package:classroom/core/services/navigation_service.dart';
import 'package:classroom/injection.dart';
import 'package:classroom/presentation/auth/pages/auth_checker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:classroom/application/auth/auth_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: MaterialApp(
        key: _navigationService.navigationKey,
        home: const AuthCheckPage(),
      ),
    );
  }
}
