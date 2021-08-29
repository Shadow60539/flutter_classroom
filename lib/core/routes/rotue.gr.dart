// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:classroom/domain/courses/course_model.dart' as _i5;
import 'package:classroom/presentation/home/pages/course_page.dart' as _i4;
import 'package:classroom/presentation/home/pages/home_page.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    CoursePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CoursePageRouteArgs>();
          return _i4.CoursePage(key: args.key, course: args.course);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(CoursePageRoute.name, path: '/course-page')
      ];
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

class CoursePageRoute extends _i1.PageRouteInfo<CoursePageRouteArgs> {
  CoursePageRoute({_i2.Key? key, required _i5.CourseModel course})
      : super(name,
            path: '/course-page',
            args: CoursePageRouteArgs(key: key, course: course));

  static const String name = 'CoursePageRoute';
}

class CoursePageRouteArgs {
  const CoursePageRouteArgs({this.key, required this.course});

  final _i2.Key? key;

  final _i5.CourseModel course;
}
