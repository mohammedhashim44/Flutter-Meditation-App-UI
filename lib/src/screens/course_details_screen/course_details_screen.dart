import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_images.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/common_widgets/favorites_widget.dart';
import 'package:meditation_app/src/common_widgets/listening_widget.dart';

import 'episode_widget.dart';
import 'voices_tab_widget.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AppImages.roundedContainerWithImage(
                  "assets/images/backgrounds/course_background.png",
                  height: 250,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 50,
                          horizontal: 20,
                        ),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.normalText(
                    "Happy Morning",
                    fontSize: 34,
                    isBold: true,
                  ),
                  AppText.normalText("Course",
                      fontSize: 14,
                      isBold: true,
                      color: const Color(0xffA1A4B2)),
                  const SizedBox(
                    height: 20,
                  ),
                  AppText.normalText(
                    "Ease the mind into a "
                    "restful night's sleep with these deep tones",
                    fontSize: 16,
                    color: const Color(0xffA1A4B2),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      FavoritesWidget(
                        iconColor: Color(0xffFF84A2),
                        textColor: Color(0xffA1A4B2),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ListeningWidget(
                        iconColor: Color(0xff67C8C1),
                        textColor: Color(0xffA1A4B2),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  AppText.normalText(
                    "Pick A Narrator",
                    fontSize: 20,
                    isBold: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 500,
                    child: VoicesTab(
                      tabOne: Column(
                        children: const [
                          EpisodeWidget(
                            title: "Focus Attention",
                            duration: "10 MIN",
                            isSelected: true,
                          ),
                          Divider(
                            height: 1,
                          ),
                          EpisodeWidget(
                            title: "Body Scan",
                            duration: "5 MIN",
                          ),
                          Divider(
                            height: 1,
                          ),
                          EpisodeWidget(
                            title: "Making Happiness",
                            duration: "3 MIN",
                          ),
                        ],
                      ),
                      tabTwo: Column(
                        children: const [
                          EpisodeWidget(
                            title: "Focus Attention",
                            duration: "10 MIN",
                            isSelected: true,
                          ),
                          Divider(
                            height: 1,
                          ),
                          EpisodeWidget(
                            title: "Body Scan",
                            duration: "5 MIN",
                          ),
                          Divider(
                            height: 1,
                          ),
                          EpisodeWidget(
                            title: "Making Happiness",
                            duration: "3 MIN",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
