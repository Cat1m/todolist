import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_riverpod/providers/providers.dart';
import 'package:todolist_riverpod/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:todolist_riverpod/utils/task_categories.dart';
import 'package:todolist_riverpod/widgets/circle_container.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectCategory = ref.watch(categoryProvider);
    final categories = TaskCategories.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            'Category',
            style: context.textThem.titleLarge,
          ),
          const Gap(10),
          Expanded(
              child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    final category = categories[index];

                    return InkWell(
                      onTap: () {
                        ref.read(categoryProvider.notifier).state = category;
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: CircleContainer(
                        color: category.color.withOpacity(0.3),
                        child: Icon(
                          category.icon,
                          color: category == selectCategory
                              ? context.colorScheme.primary
                              : category.color,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) => const Gap(8),
                  itemCount: categories.length))
        ],
      ),
    );
  }
}
