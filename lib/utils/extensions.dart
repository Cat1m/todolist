import 'package:flutter/material.dart';

extension BuildContexExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get textThem => _theme.textTheme;
  ColorScheme get colorScheme => _theme.colorScheme;
  Size get deviceSize => MediaQuery.sizeOf(this);
}
