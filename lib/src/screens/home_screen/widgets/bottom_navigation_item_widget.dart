import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:karer/src/styles/colors_app.dart';

class BottomNavigationItemWidget extends StatelessWidget {
  const BottomNavigationItemWidget({
    super.key,
    required this.icon,
    this.iconActive,
    this.active = false,
  });

  final HeroIcons icon;
  final HeroIcons? iconActive;

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 3,
            color: active ? ColorsApp.primary700 : Colors.transparent,
          ),
        ),
      ),
      child: HeroIcon(
        active && iconActive != null ? iconActive! : icon,
        size: 24,
        color: active ? ColorsApp.primary700 : ColorsApp.gray300,
        style: active ? HeroIconStyle.mini : HeroIconStyle.outline,
      ),
    );
  }
}
