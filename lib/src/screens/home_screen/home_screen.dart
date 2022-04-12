import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/common_widgets/play_music_card.dart';
import 'package:meditation_app/src/screens/home_screen/recommended_card_widget.dart';
import 'package:meditation_app/src/screens/home_screen/recommended_music_dummy_data.dart';
import 'package:meditation_app/src/themes/theme.dart';

import 'home_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/images/icons/app_icon.svg",
                semanticsLabel: 'A red up arrow',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            AppText.normalText(
              "Good Morning",
              fontSize: 28,
              isBold: true,
              color: AppTheme.of(context).theme.headerTextColor,
            ),
            AppText.normalText(
              "We wish you have a good day",
              fontSize: 20,
              color: AppTheme.of(context).theme.bodyTextColor,
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                HomeCardWidget(
                  backgroundImage: 'assets/images/home_cards/card_one.png',
                  title: "Basics",
                  subTitle: "Course",
                  mainTextColor: Color(0xffFFECCC),
                  textColor: Color(0xffebeaec),
                  buttonColor: Color(0xff3F414E),
                ),
                Spacer(),
                HomeCardWidget(
                  backgroundImage: 'assets/images/home_cards/card_two.png',
                  title: "Relaxation",
                  subTitle: "Music",
                  mainTextColor: Color(0xff3F414E),
                  textColor: Color(0xff3F414E),
                  buttonColor: Color(0xffFEFFFE),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const PlayMusicCard(
              imageBackground: "assets/images/home_cards/play_music_card.png",
              title: "Daily Thoughts",
              subText: "Meditation 3-10 MIN",
              color: Colors.white,
            ),
            const SizedBox(height: 40),
            AppText.normalText(
              "Recommended for you",
              fontSize: 28,
              isBold: true,
              color: AppTheme.of(context).theme.headerTextColor,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: recommendedMusicDummyData.map((e) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: RecommendedMusicCardWidget(
                      recommendedMusicData: e,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
