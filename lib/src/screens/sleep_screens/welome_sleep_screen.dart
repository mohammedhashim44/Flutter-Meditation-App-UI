import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/common_widgets/app_buttons.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';

class WelcomeSleepScreen extends StatelessWidget {
  const WelcomeSleepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/sleep/welcome_sleep_background.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    AppText.normalText(
                      "Welcome to Sleep",
                      fontSize: 30,
                      isBold: true,
                      color: const Color(0xffEBEAEC),
                    ),
                    const SizedBox(height: 15),
                    AppText.normalText(
                      "Explore the new king of sleep. It uses sound and visualizations to create perfect conditions for "
                      "refreshing sleep",
                      fontSize: 16,
                      color: const Color(0xffEBEAEC),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  "assets/images/sleep/birds.svg",
                  semanticsLabel: 'A red up arrow',
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: AppButtons.mainButton(
                  "GET STARTED",
                  onPressed: () {
                    onGettingStartedPressed(context);
                  },
                  fontSize: 14,
                  buttonColor: const Color(0xff8E97FD),
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                ),
              ),
              const Spacer(),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onGettingStartedPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
