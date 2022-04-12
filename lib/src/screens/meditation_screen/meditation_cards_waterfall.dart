import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'meditation_card.dart';

class MeditationCardsWaterfallWidget extends StatelessWidget {
  const MeditationCardsWaterfallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/meditation_cards/card_1.png",
      "assets/images/meditation_cards/card_2.png",
      "assets/images/meditation_cards/card_4.png",
      "assets/images/meditation_cards/card_2.png",
    ];
    return WaterfallFlow.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 15.0,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return MeditationCard(
          text: "7 days of Calm",
          image: images[index],
        );
      },
    );
  }
}
