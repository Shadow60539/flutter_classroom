import 'package:classroom/core/services/navigation_service.dart';
import 'package:classroom/injection.dart';
import 'package:flutter/material.dart';

final BuildContext context =
    getIt<NavigationService>().navigationKey.currentContext!;
