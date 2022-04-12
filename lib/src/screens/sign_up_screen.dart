import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_buttons.dart';
import 'package:meditation_app/src/common_widgets/app_logo.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/screens/welcome_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage(
                "assets/images/backgrounds/sign_up_page.png",
              ),
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const AppLogo(),
                  const Spacer(flex: 20),
                  AppText.normalText(
                    "We are what we do",
                    fontSize: 30,
                    isBold: true,
                  ),
                  const SizedBox(height: 15),
                  AppText.normalText(
                    "Thousands of people use silent moon for small meditation ",
                    fontSize: 16,
                    color: const Color(0xffA1A4B2),
                  ),
                  const Spacer(flex: 1),
                  SizedBox(
                    width: double.maxFinite,
                    child: AppButtons.mainButton(
                      "Proceed",
                      onPressed: () {
                        onProceedPressed(context);
                      },
                      buttonColor: const Color(0xff8E97FD),
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onProceedPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }
}
