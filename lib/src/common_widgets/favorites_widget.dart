import 'package:flutter/material.dart';

import 'app_text.dart';

class FavoritesWidget extends StatelessWidget {
  final Color iconColor;
  final Color textColor;

  const FavoritesWidget({
    Key? key,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.favorite,
          color: iconColor,
        ),
        const SizedBox(
          width: 10,
        ),
        AppText.normalText(
          "24,234 Favorites",
          fontSize: 14,
          color: textColor,
          isBold: true,
        )
      ],
    );
  }
}
