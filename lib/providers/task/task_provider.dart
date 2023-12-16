import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_riverpod/data/repositories/repositories.dart';
import 'package:todolist_riverpod/providers/providers.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
