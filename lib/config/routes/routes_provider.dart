import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/config/routes/routes.dart';
import 'package:flutter/material.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteLocation.home,
    navigatorKey: navigationKey,
    routes: appRoutes,
  );
});
