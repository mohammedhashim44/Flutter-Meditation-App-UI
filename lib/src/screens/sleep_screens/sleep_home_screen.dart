import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/common_widgets/icon_with_bottom_text_row.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_card_widget.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_dummy_data.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_screen.dart';

class SleepHomeScreen extends StatelessWidget {
  const SleepHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03174C),
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image:
                  AssetImage("assets/images/sleep/home_sleep_background.png"),
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Center(
                    child: AppText.normalText(
                      "Sleep Stories",
                      fontSize: 28,
                      isBold: true,
                      color: const Color(0xffE6E7F2),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: AppText.normalText(
                      "Soothing bedtime stories to help you fall into deep and natural sleep",
                      fontSize: 16,
                      color: const Color(0xffE6E7F2),
                    ),
                  ),
                  const SizedBox(height: 35),
                  const IconWithBottomTextRow(
                    isDark: true,
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () => onPromotionCardClicked(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage(
                            "assets/images/sleep/home_sleep_promotion_card.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: SleepMusicCard(music: sleepMusicDummyData[0])),
                      const SizedBox(width: 20),
                      Expanded(
                          child: SleepMusicCard(music: sleepMusicDummyData[1])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: SleepMusicCard(music: sleepMusicDummyData[2])),
                      const SizedBox(width: 20),
                      Expanded(
                          child: SleepMusicCard(music: sleepMusicDummyData[3])),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPromotionCardClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SleepMusicScreen()),
    );
  }
}
