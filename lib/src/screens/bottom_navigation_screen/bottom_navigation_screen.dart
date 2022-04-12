import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/bottom_navigation_screen/navigation_tabs.dart';
import 'package:meditation_app/src/screens/sleep_screens/welome_sleep_screen.dart';
import 'package:meditation_app/src/themes/theme.dart';

import 'navigation_icon_widget.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).theme.scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          // Change theme only in sleep page
          var mode = AppTheme.of(context).theme.mode;

          if (newIndex == 1 && mode == ThemeMode.light) {
            AppTheme.of(context).setMode(ThemeMode.dark);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const WelcomeSleepScreen()),
            );
          } else if (newIndex != 1 && mode == ThemeMode.dark) {
            AppTheme.of(context).setMode(ThemeMode.light);
          }

          setState(() {
            selectedIndex = newIndex;
          });
        },
        unselectedItemColor: context.theme.unselectedNavTextColor,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        selectedItemColor: AppTheme.of(context).theme.selectedNavTextColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppTheme.of(context).theme.scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        items: navigationTabsData.map((item) {
          int index = navigationTabsData.indexOf(item);
          return BottomNavigationBarItem(
            icon: NavigationIconWidget(
              icon: item.iconData,
              isSelected: index == selectedIndex,
            ),
            label: item.label,
          );
        }).toList(),
      ),
      body: SafeArea(child: getBody()),
    );
  }

  Widget getBody() {
    return navigationTabsData.elementAt(selectedIndex).page;
  }
}
