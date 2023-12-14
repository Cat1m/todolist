import 'package:flutter/material.dart';
import 'package:todolist_riverpod/data/data.dart';
import 'package:todolist_riverpod/utils/task_categories.dart';
import 'package:todolist_riverpod/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:todolist_riverpod/widgets/widgets.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Aug 7, 2023',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'My Todo list',
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: "title",
                          note: "note",
                          time: "9:42",
                          date: "12/14/2023",
                          category: TaskCategories.orthers,
                          isCompleted: false,
                        ),
                        Task(
                          title: "title 2 title 2title 2title 2 ",
                          note: "note",
                          time: "9:42",
                          date: "12/14/2023",
                          category: TaskCategories.shopping,
                          isCompleted: false,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textThem.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: "title",
                          note: "note",
                          time: "9:42",
                          date: "12/14/2023",
                          category: TaskCategories.work,
                          isCompleted: true,
                        ),
                        Task(
                          title: "title 2 title 2title 2title 2 ",
                          note: "note",
                          time: "9:42",
                          date: "12/14/2023",
                          category: TaskCategories.personal,
                          isCompleted: true,
                        ),
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: DisplayWhiteText(
                          text: 'Add New Task',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
