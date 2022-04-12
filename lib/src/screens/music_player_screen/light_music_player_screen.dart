import 'package:flutter/material.dart';

import 'music_player_colors.dart';
import 'music_player_screen.dart';

var lightMusicPlayerColors = MusicPlayerColors(
  "assets/images/backgrounds/music_background.png",
  const Color(0xff3F414E),
  const Color(0xffA0A3B1),
  const Color(0xffb6b8bf),
  Colors.white,
);

class LightMusicPlayer extends StatelessWidget {
  const LightMusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MusicPlayer(
      musicPlayerColors: lightMusicPlayerColors,
    );
  }
}
