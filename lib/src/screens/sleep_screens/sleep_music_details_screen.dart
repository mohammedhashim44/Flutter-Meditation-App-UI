import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/src/common_widgets/app_buttons.dart';
import 'package:meditation_app/src/common_widgets/app_images.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/common_widgets/favorites_widget.dart';
import 'package:meditation_app/src/common_widgets/listening_widget.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_card_widget.dart';
import 'package:meditation_app/src/screens/music_player_screen/sleep_music_player.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_dummy_data.dart';
import 'package:meditation_app/src/themes/theme.dart';

class SleepMusicDetailsScreen extends StatelessWidget {
  final SleepMusicCardData music;

  const SleepMusicDetailsScreen({Key? key, required this.music})
      : super(key: key);

  final double itemHeight = 177;
  final double itemWidth = 177;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03174C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: "${music.id}+image",
                child: AppImages.roundedContainerWithImage(
                  music.imagePath,
                  height: 250,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    AppText.normalText(
                      music.title,
                      fontSize: 34,
                      isBold: true,
                      color: AppTheme.of(context)
                          .theme
                          .sleepMusicCardTextHeaderColor,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AppText.normalText(
                      music.duration,
                      fontSize: 14,
                      isBold: true,
                      color: AppTheme.of(context)
                          .theme
                          .sleepMusicCardTextBodyColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppText.normalText(
                      "Ease the mind into a "
                      "restful night's sleep with these deep tones",
                      fontSize: 16,
                      color: AppTheme.of(context)
                          .theme
                          .sleepMusicCardTextBodyColor,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        FavoritesWidget(
                          textColor: AppTheme.of(context)
                              .theme
                              .sleepMusicCardContrastColor,
                          iconColor: AppTheme.of(context)
                              .theme
                              .sleepMusicCardContrastColor,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        ListeningWidget(
                          iconColor: AppTheme.of(context)
                              .theme
                              .sleepMusicCardContrastColor,
                          textColor: AppTheme.of(context)
                              .theme
                              .sleepMusicCardContrastColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Divider(height: 1, color: Colors.white),
                    const SizedBox(height: 30),
                    AppText.normalText(
                      "Related",
                      fontSize: 24,
                      isBold: true,
                      color: AppTheme.of(context)
                          .theme
                          .sleepMusicCardContrastColor,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 175,
                      child: Row(
                        children: [
                          Expanded(
                            child: SleepMusicCard(
                              music: getOtherMusic()[0],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: SleepMusicCard(
                              music: getOtherMusic()[1],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppButtons.mainButton(
                        "PLAY",
                        onPressed: () => onPlayClicked(context),
                        buttonColor: const Color(0xff8E97FD),
                        textColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        radius: 50,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<SleepMusicCardData> getOtherMusic() {
    int limit = 2;
    List<SleepMusicCardData> musics = [];
    for (var element in sleepMusicDummyData) {
      if (element.id != music.id) {
        musics.add(element);
        if (musics.length == limit) {
          break;
        }
      }
    }
    return musics;
  }

  void onPlayClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MusicPlayer(
          sleepPlayer: true,
        ),
      ),
    );
  }
}
