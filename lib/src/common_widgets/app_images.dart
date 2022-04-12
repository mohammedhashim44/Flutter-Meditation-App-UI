import 'package:flutter/cupertino.dart';

class AppImages {
  static Widget roundedContainerWithImage(
    String imagePath, {
    BoxFit boxFit = BoxFit.cover,
    double height = 100,
    BorderRadius borderRadius = BorderRadius.zero,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: boxFit,
        ),
      ),
    );
  }
}
