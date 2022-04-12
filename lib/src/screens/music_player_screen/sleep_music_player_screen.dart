import 'package:flutter/material.dart';

import 'music_player_colors.dart';
import 'music_player_screen.dart';

var darkMusicPlayerColors = MusicPlayerColors(
  "assets/images/backgrounds/music_background_sleep.png",
  const Color(0xffE6E7F2),
  const Color(0xff98A1BD),
  const Color(0xff2C4179),
  Colors.white,
);

class SleepMusicPlayer extends StatelessWidget {
  const SleepMusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MusicPlayer(
      musicPlayerColors: darkMusicPlayerColors,
    );
  }
}
