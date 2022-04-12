import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/screens/music_player_screen/sleep_music_player.dart';

class EpisodeWidget extends StatelessWidget {
  final String title;
  final String duration;
  final bool isSelected;

  const EpisodeWidget({
    Key? key,
    required this.title,
    required this.duration,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          GestureDetector(
            child: getPlayButton(),
            onTap: () => onEpisodeClicked(context),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.normalText(
                title,
                fontSize: 16,
                isBold: true,
              ),
              AppText.normalText(
                duration,
                fontSize: 11,
                color: const Color(0xffA1A4B2),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget getPlayButton() {
    if (isSelected) {
      return const Icon(
        Icons.play_circle_fill,
        size: 40,
        color: Color(0xff8E97FD),
      );
    }
    return const Icon(
      Icons.play_circle_outline_rounded,
      size: 40,
    );
  }

  void onEpisodeClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MusicPlayer()),
    );
  }
}
