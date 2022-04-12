import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';

class RecommendedMusicData {
  final String image;
  final String title;
  final String subtext;

  RecommendedMusicData(this.image, this.title, this.subtext);
}

class RecommendedMusicCardWidget extends StatelessWidget {
  final RecommendedMusicData recommendedMusicData;

  const RecommendedMusicCardWidget({
    Key? key,
    required this.recommendedMusicData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SvgPicture.asset(
                recommendedMusicData.image,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          AppText.normalText(
            recommendedMusicData.title,
            fontSize: 18,
            isBold: true,
          ),
          const SizedBox(height: 5),
          AppText.normalText(
            recommendedMusicData.subtext,
            fontSize: 12,
            color: const Color(0xffA1A4B2),
          ),
        ],
      ),
    );
  }
}
