import 'package:auto_route/annotations.dart';
import 'package:classroom/presentation/home/pages/home_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: HomePage, initial: true),
])
class $Router {}
