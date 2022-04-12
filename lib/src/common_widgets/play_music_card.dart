import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/music_player_screen/sleep_music_player.dart';

class PlayMusicCard extends StatelessWidget {
  final String imageBackground;
  final String title;
  final String subText;
  final Color color;

  const PlayMusicCard({
    Key? key,
    required this.imageBackground,
    required this.title,
    required this.subText,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(context),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imageBackground),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: color,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        subText,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: color.withOpacity(0.5),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.play_circle_fill,
                color: color,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LightMusicPlayer()),
    );
  }
}
