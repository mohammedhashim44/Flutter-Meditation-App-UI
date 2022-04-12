import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/common_widgets/app_buttons.dart';
import 'package:meditation_app/src/common_widgets/app_logo.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/screens/choose_topic_screen/choose_topic_screen.dart';
import 'package:meditation_app/src/themes/theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).theme.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/images/backgrounds/welcome_screen_background_objects.svg",
                    semanticsLabel: 'A red up arrow',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  const AppLogoLight(),
                  const Spacer(),
                  AppText.normalText(
                    "Hi Mohammed, Welcome",
                    fontSize: 30,
                    isBold: true,
                    color: const Color(0xffFFECCC),
                  ),
                  AppText.normalText(
                    "to Silent Moon",
                    fontSize: 30,
                    color: const Color(0xffFFECCC),
                  ),
                  const SizedBox(height: 15),
                  AppText.normalText(
                    "Explore the app, find some peace of mind to prepare for meditation",
                    fontSize: 16,
                    color: const Color(0xffEBEAEC),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: SvgPicture.asset(
                      "assets/images/backgrounds/welcome_screen_background_woman.svg",
                      semanticsLabel: 'A red up arrow',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.maxFinite,
                    child: AppButtons.mainButton(
                      "Get Started",
                      onPressed: () {
                        onGettingStartedPressed(context);
                      },
                      fontSize: 14,
                      buttonColor: const Color(0xffEBEAEC),
                      textColor: const Color(0xff3F414E),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onGettingStartedPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChooseTopicScreen()),
    );
  }
}
