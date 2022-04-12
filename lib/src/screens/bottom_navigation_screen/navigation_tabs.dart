import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/meditation_screen/meditatation_screen.dart';
import 'package:meditation_app/src/screens/sleep_screens/sleep_home_screen.dart';

import '../home_screen/home_screen.dart';

class NavigationTabData {
  final IconData iconData;
  final String label;
  final Widget page;

  NavigationTabData(this.iconData, this.label, this.page);
}

var navigationTabsData = [
  NavigationTabData(Icons.home, "HOME", const HomeScreen()),
  NavigationTabData(Icons.bed, "SLEEP", const SleepHomeScreen()),
  NavigationTabData(Icons.chair, "MEDITATE", const MeditateScreen()),
  NavigationTabData(
      Icons.music_note, "MUSIC", const Center(child: Icon(Icons.music_note))),
  NavigationTabData(
      Icons.person, "PROFILE", const Center(child: Icon(Icons.person))),
];
