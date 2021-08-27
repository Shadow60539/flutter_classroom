import 'package:classroom/core/services/navigation_service.dart';
import 'package:classroom/presentation/auth/pages/auth_checker_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final NavigationService _navigationService = NavigationService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _navigationService.navigationKey,
      home: const AuthCheckPage(),
    );
  }
}
