import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_text.dart';

class AppButtons {
  static Widget mainButton(
    String text, {
    Function? onPressed,
    double fontSize = 16,
    Color buttonColor = Colors.white,
    Color textColor = Colors.black,
    EdgeInsets padding = const EdgeInsets.all(0),
    double radius = 25,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed.call();
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        elevation: 0,
        primary: buttonColor,
        padding: padding,
      ),
      child: AppText.normalText(
        text,
        fontSize: fontSize,
        color: textColor,
        isBold: true,
      ),
    );
  }
}
