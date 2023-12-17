import 'package:flutter/material.dart';
import 'package:todolist_riverpod/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_riverpod/data/data.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/data/models/task.dart';
import 'package:todolist_riverpod/providers/providers.dart';
import 'package:fluttertoast/fluttertoast.dart';

@immutable
class AppAlerts {
  const AppAlerts._();

  static displaySnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textThem.bodyMedium,
        ),
        backgroundColor: context.colorScheme.onSecondary,
      ),
    );
  }

  static displayToast(BuildContext context, String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
    );
  }

  static Future<void> showAlertDeleteDialog({
    required BuildContext context,
    required WidgetRef ref,
    required Task task,
  }) async {
    Widget cancelButton = TextButton(
      child: const Text('NO'),
      onPressed: () => context.pop(),
    );
    Widget deleteButton = TextButton(
      onPressed: () async {
        await ref.read(taskProvider.notifier).deleteTask(task).then(
          (value) {
            displayToast(
              context,
              'Task deleted successfully',
            );
            context.pop();
          },
        );
      },
      child: const Text('YES'),
    );

    AlertDialog alert = AlertDialog(
      title: const Text('Are you sure you want to delete this task?'),
      actions: [
        deleteButton,
        cancelButton,
      ],
    );

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
