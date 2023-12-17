import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/config/config.dart';

import 'package:todolist_riverpod/screens/screens.dart';

final appRoutes = [
  GoRoute(
      path: RouteLocation.home,
      parentNavigatorKey: navigationKey,
      builder: HomeScreen.builder),
  GoRoute(
      path: RouteLocation.createTask,
      parentNavigatorKey: navigationKey,
      builder: CreateTaskScreen.builder),
];
