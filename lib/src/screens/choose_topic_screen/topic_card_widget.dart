import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';

class Topic {
  final int id;
  final String iconPath;
  final String title;
  final Color textColor;

  Topic(
    this.id,
    this.iconPath,
    this.title, {
    this.textColor = Colors.black,
  });
}

class TopicCardWidget extends StatelessWidget {
  final Topic topic;
  final bool isSelected;

  final double radius = 10.0;

  const TopicCardWidget(
    this.topic, {
    Key? key,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: SvgPicture.asset(
            topic.iconPath,
            semanticsLabel: 'A red up arrow',
            fit: BoxFit.cover,
          ),
        ),
        if (isSelected)
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        if (isSelected)
          const Positioned(
            bottom: 5,
            right: 5,
            child: Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
          ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                AppText.normalText(
                  topic.title,
                  isBold: true,
                  fontSize: 18,
                  textAlign: TextAlign.start,
                  color: topic.textColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
