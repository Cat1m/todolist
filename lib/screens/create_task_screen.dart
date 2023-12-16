import 'package:flutter/material.dart';
import 'package:todolist_riverpod/config/routes/routes.dart';
import 'package:todolist_riverpod/data/data.dart';
import 'package:todolist_riverpod/providers/date_provider.dart';
import 'package:todolist_riverpod/providers/providers.dart';
import 'package:todolist_riverpod/utils/helpers.dart';
import 'package:todolist_riverpod/widgets/display_white_text.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/widgets/widgets.dart';
import 'package:gap/gap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class CreateTaskScreen extends ConsumerStatefulWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  ConsumerState<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends ConsumerState<CreateTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommonTextField(
                title: 'Task Title',
                hintText: 'Input task title',
                controller: _titleController,
              ),
              const Gap(16),
              const SelectCategory(),
              const SelectDateTime(),
              const Gap(16),
              CommonTextField(
                title: 'Note',
                hintText: 'Input task note',
                maxLines: 6,
                controller: _noteController,
              ),
              const Gap(60),
              ElevatedButton(
                  onPressed: () {}, child: const DisplayWhiteText(text: 'save'))
            ],
          ),
        ),
      ),
    );
  }

  void _createTask() async {
    final title = _titleController.text.trim();
    final note = _noteController.text.trim();
    final date = ref.watch(dateProvider);
    final time = ref.watch(timeProvider);
    final category = ref.watch(categoryProvider);

    if (title.isNotEmpty) {
      final task = Task(
        title: title,
        note: note,
        time: Helpers.timeToString(time),
        date: DateFormat.yMMMd().format(date),
        category: category,
        isCompleted: false,
      );

      await ref.read(taskProvider.notifier).createTask(task).then((value) {
        context.go(RouteLocation.home);
      });
    }
  }
}
