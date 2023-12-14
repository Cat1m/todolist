import 'package:flutter/material.dart';
import 'package:todolist_riverpod/config/config.dart';
import 'package:todolist_riverpod/screens/home_screens.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreens(),
    );
  }
}
