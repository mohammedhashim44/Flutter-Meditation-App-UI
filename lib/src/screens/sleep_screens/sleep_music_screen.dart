import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_card_widget.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_card_widget/sleep_music_dummy_data.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_music_details_screen.dart';

class SleepMusicScreen extends StatelessWidget {
  const SleepMusicScreen({Key? key}) : super(key: key);

  final double itemHeight = 177;
  final double itemWidth = 177;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Sleep Music"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff03174C),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: sleepMusicDummyData.map((e) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SleepMusicDetailsScreen(
                            music: e,
                          )),
                );
              },
              child: SleepMusicCard(
                music: e,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
