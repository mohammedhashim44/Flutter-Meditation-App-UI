import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_buttons.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/screens/course_details_screen/course_details_screen.dart';

class HomeCardWidget extends StatelessWidget {
  final String backgroundImage;

  final String title;
  final String subTitle;

  final Color mainTextColor;
  final Color textColor;
  final Color buttonColor;

  const HomeCardWidget({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.mainTextColor,
    required this.textColor,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(context),
      child: Container(
        width: 170,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.normalText(
                  title,
                  fontSize: 14,
                  isBold: true,
                  color: mainTextColor,
                ),
                AppText.normalText(
                  subTitle,
                  fontSize: 11,
                  color: mainTextColor,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                AppText.normalText(
                  "3-10 MIN",
                  fontSize: 11,
                  color: textColor,
                ),
                const Spacer(),
                AppButtons.mainButton(
                  "Start",
                  textColor: buttonColor,
                  buttonColor: textColor,
                  onPressed: () => onClicked(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CourseDetailsScreen(),
      ),
    );
  }
}
