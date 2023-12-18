import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_riverpod/providers/bottom_bar/nav_notifier.dart';
import 'package:todolist_riverpod/screens/create_task_screen.dart';
import 'package:todolist_riverpod/screens/home_screens.dart';
import 'package:todolist_riverpod/utils/extensions.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends ConsumerStatefulWidget {
  static MainScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const MainScreen();
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const CreateTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var navIndex = ref.watch(navProvider);
    return Scaffold(
      body: Center(
        child: _widgetOptions[navIndex.index],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navIndex.index,
        onDestinationSelected: (value) {
          ref.read(navProvider.notifier).onIndexChanged(
                value,
              );
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        elevation: 0,
        backgroundColor: context.colorScheme.surface,
        height: 50,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
