import 'package:flutter/material.dart';
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
                child: const Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DisplayWhiteText(
                          text: 'Aug 7, 2023',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        Gap(10),
                        DisplayWhiteText(
                          text: 'My Todo list',
                          fontSize: 40,
                        ),
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
