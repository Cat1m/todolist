import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school, Colors.blueGrey),
  health(Icons.favorite, Colors.orange),
  home(Icons.home, Colors.green),
  orthers(Icons.calendar_month, Colors.purple),
  personal(Icons.person, Colors.lightBlue),
  shopping(Icons.shopping_bag, Colors.pink),
  social(Icons.people, Colors.brown),
  travel(Icons.flight, Colors.yellow),
  work(Icons.work, Colors.teal);

  static TaskCategories stringToCategory(String name) {
    try {
      return TaskCategories.values.firstWhere(
        (category) => category.name == name,
      );
    } catch (e) {
      return TaskCategories.orthers;
    }
  }

  final IconData icon;
  final Color color;
  const TaskCategories(this.icon, this.color);
}
