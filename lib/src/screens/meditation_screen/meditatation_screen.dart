import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/common_widgets/play_music_card.dart';
import 'package:meditation_app/src/screens/meditation_screen/meditation_cards_waterfall.dart';
import 'package:meditation_app/src/themes/theme.dart';

import '../../common_widgets/icon_with_bottom_text_row.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Center(
              child: AppText.normalText(
                "Meditate",
                fontSize: 28,
                isBold: true,
                color: AppTheme.of(context).theme.headerTextColor,
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: AppText.normalText(
                "We can learn to recognize when our brains focus, and when they wonder",
                fontSize: 16,
                color: AppTheme.of(context).theme.bodyTextColor,
              ),
            ),
            const SizedBox(height: 35),
            const IconWithBottomTextRow(),
            const SizedBox(height: 30),
            const PlayMusicCard(
              imageBackground:
                  "assets/images/home_cards/play_music_card_light.png",
              title: "Daily Calm",
              subText: "APR 30 PAUSE PRACTICE",
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            const MeditationCardsWaterfallWidget(),
          ],
        ),
      ),
    );
  }
}
