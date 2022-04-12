import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_details_screen.dart';
import 'package:meditation_app/src/themes/theme.dart';

import '../../../common_widgets/app_text.dart';

class SleepMusicCardData {
  final String id;
  final String title;
  final String duration;
  final String imagePath;

  SleepMusicCardData(this.id, this.title, this.duration, this.imagePath);
}

class SleepMusicCard extends StatelessWidget {
  final SleepMusicCardData music;

  const SleepMusicCard({Key? key, required this.music}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClicked(context);
      },
      child: SizedBox(
        height: 175,
        width: 177,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: "${music.id}+image",
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(music.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AppText.normalText(
              music.title,
              fontSize: 18,
              isBold: true,
              // color: const Color(0xffE6E7F2),
              color: AppTheme.of(context).theme.sleepMusicCardTextHeaderColor,
            ),
            const SizedBox(
              height: 5,
            ),
            AppText.normalText(
              music.duration,
              fontSize: 11,
              isBold: true,
              color: AppTheme.of(context).theme.sleepMusicCardTextBodyColor,
            )
          ],
        ),
      ),
    );
  }

  void onCardClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SleepMusicDetailsScreen(
                music: music,
              )),
    );
  }
}
