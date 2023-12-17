import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/config/routes/routes.dart';
import 'package:todolist_riverpod/screens/create_task_screen.dart';
import 'package:todolist_riverpod/screens/home_screens.dart';

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
