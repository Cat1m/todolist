import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_riverpod/data/data.dart';
import 'package:todolist_riverpod/data/repositories/repositories.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.watch(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
