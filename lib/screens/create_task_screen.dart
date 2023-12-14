import 'package:flutter/material.dart';
import 'package:todolist_riverpod/widgets/display_white_text.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist_riverpod/widgets/widgets.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CommonTextField(
              title: 'Task Title',
              hintText: 'Input task title',
            ),
            const Gap(16),
            const SelectDateTime(),
            const Gap(16),
            const CommonTextField(
              title: 'Note',
              hintText: 'Input task note',
              maxLines: 6,
            ),
            const Gap(60),
            ElevatedButton(
                onPressed: () {}, child: const DisplayWhiteText(text: 'save'))
          ],
        ),
      ),
    );
  }
}
