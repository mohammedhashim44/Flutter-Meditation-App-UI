// ignore_for_file: annotate_overrides

part of 'theme.dart';

// const String fontFamily = "Poppins";
const String fontFamily = "Roboto";

abstract class AppThemeData {
  ThemeMode get mode;

  ThemeData get material => ThemeData(
        primaryColor: primaryColor,
        fontFamily: fontFamily,
      );

  Color get primaryColor;
  Color get scaffoldBackgroundColor;

  Color get headerTextColor;
  Color get bodyTextColor;

  Color get selectedNavIconColor;
  Color get selectedNavTextColor;
  Color get unselectedNavIconColor;
  Color get unselectedNavTextColor;

  Color get iconWithBottomTextTextColor;
  Color get iconWithBottomTextSelectedTextColor;
  Color get iconWithBottomTextIconColor;
  Color get iconWithBottomTextSelectedIconColor;

  Color get sleepMusicCardTextHeaderColor => const Color(0xffE6E7F2);
  Color get sleepMusicCardTextBodyColor => const Color(0xff98A1BD);
  Color get sleepMusicCardContrastColor => const Color(0xffE6E7F2);
}

class LightThemeData extends AppThemeData {
  ThemeMode get mode => ThemeMode.light;

  Color get primaryColor => const Color(0xff8E97FD);
  Color get scaffoldBackgroundColor => Colors.white;

  Color get headerTextColor => const Color(0xff3f414e);
  Color get bodyTextColor => const Color(0xffA1A4B2);

  Color get selectedNavIconColor => const Color(0xff8E97FD);
  Color get selectedNavTextColor => const Color(0xff8E97FD);
  Color get unselectedNavIconColor => Colors.grey;
  Color get unselectedNavTextColor => Colors.grey;

  Color get iconWithBottomTextTextColor => const Color(0xffA0A3B1);
  Color get iconWithBottomTextSelectedTextColor => const Color(0xff3F414E);
  Color get iconWithBottomTextIconColor => const Color(0xffA0A3B1);
  Color get iconWithBottomTextSelectedIconColor => const Color(0xff8E97FD);
}

class DarkThemeData extends LightThemeData {
  ThemeMode get mode => ThemeMode.dark;

  Color get scaffoldBackgroundColor => const Color(0xff03174C);

  Color get selectedNavTextColor => const Color(0xffE6E7F2);
  Color get unselectedNavIconColor => Colors.grey;
  Color get unselectedNavTextColor => Colors.grey;

  Color get iconWithBottomTextTextColor => const Color(0xff98A1BD);
  Color get iconWithBottomTextSelectedTextColor => const Color(0xffE6E7F2);
  Color get iconWithBottomTextIconColor => const Color(0xff586894);
  Color get iconWithBottomTextSelectedIconColor => const Color(0xff8E97FD);
}
