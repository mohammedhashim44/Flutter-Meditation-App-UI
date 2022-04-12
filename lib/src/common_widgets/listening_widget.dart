import 'package:flutter/material.dart';

import 'app_text.dart';

class ListeningWidget extends StatelessWidget {
  final Color iconColor;
  final Color textColor;

  const ListeningWidget({
    Key? key,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.headset,
          color: iconColor,
        ),
        const SizedBox(
          width: 10,
        ),
        AppText.normalText(
          "34,234 Listening",
          fontSize: 14,
          color: textColor,
          isBold: true,
        )
      ],
    );
  }
}
