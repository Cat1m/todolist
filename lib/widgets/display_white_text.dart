import 'package:flutter/material.dart';
import 'package:todolist_riverpod/utils/utils.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
  });
  final String text;
  final double? size;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textThem.headlineSmall?.copyWith(
        color: context.colorScheme.surface,
        fontSize: size,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
