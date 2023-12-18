import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/config/config.dart';
import 'package:flutter/material.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteLocation.mainscreen,
    navigatorKey: navigationKey,
    routes: appRoutes,
  );
});
