import 'package:flutter/material.dart';
import 'package:meditation_app/src/themes/theme.dart';

class NavigationIconWidget extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const NavigationIconWidget(
      {Key? key, required this.icon, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        isSelected ? context.theme.selectedNavIconColor : Colors.transparent;

    Color iconColor =
        isSelected ? Colors.white : context.theme.unselectedNavIconColor;

    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
