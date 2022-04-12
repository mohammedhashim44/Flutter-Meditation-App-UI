import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/themes/theme.dart';

class IconWithBottomText extends StatelessWidget {
  final bool isSelected;
  final bool isDark;

  final String text;
  final IconData icon;

  const IconWithBottomText({
    Key? key,
    this.isSelected = false,
    required this.text,
    required this.icon,
    this.isDark = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color selectedIconColor =
        AppTheme.of(context).theme.iconWithBottomTextSelectedIconColor;
    Color selectedTextColor =
        AppTheme.of(context).theme.iconWithBottomTextSelectedTextColor;
    Color textColor = AppTheme.of(context).theme.iconWithBottomTextTextColor;
    Color iconColor = AppTheme.of(context).theme.iconWithBottomTextIconColor;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            color: isSelected ? selectedIconColor : iconColor,
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        AppText.normalText(
          text,
          fontSize: 16,
          isBold: true,
          color: isSelected ? selectedTextColor : textColor,
        ),
      ],
    );
  }
}
