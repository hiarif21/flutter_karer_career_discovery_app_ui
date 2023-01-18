import 'package:flutter/material.dart';
import 'package:karer/src/styles/colors_app.dart';

class CategoryButtonWidget extends StatelessWidget {
  const CategoryButtonWidget({
    super.key,
    required this.category,
    this.active = false,
    required this.onPressed,
  });

  final String category;

  final bool? active;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = Theme.of(context).brightness == Brightness.dark;

    Color backgroundColor;
    Color foregroundColor;

    if (active == true) {
      backgroundColor = ColorsApp.primary700;
      foregroundColor = ColorsApp.white;
    } else {
      backgroundColor = darkMode ? ColorsApp.gray800 : ColorsApp.gray100;
      foregroundColor = ColorsApp.gray500;
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text(category),
    );
  }
}
