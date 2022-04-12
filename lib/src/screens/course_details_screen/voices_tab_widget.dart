import 'package:flutter/material.dart';
import 'package:meditation_app/src/common_widgets/app_text.dart';
import 'package:meditation_app/src/themes/theme.dart';

class VoicesTab extends StatelessWidget {
  final Widget tabOne;
  final Widget tabTwo;

  const VoicesTab({Key? key, required this.tabOne, required this.tabTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppTheme.of(context).theme.primaryColor,
            tabs: [
              Tab(
                child: AppText.normalText(
                  "Male Voice",
                  fontSize: 16,
                  isBold: true,
                  color: AppTheme.of(context).theme.primaryColor,
                ),
              ),
              Tab(
                child: AppText.normalText(
                  "Female Voice",
                  fontSize: 16,
                  isBold: true,
                  color: AppTheme.of(context).theme.primaryColor,
                ),
              ),
            ],
          ),
          Divider(
            height: 0.1,
            color: AppTheme.of(context).theme.primaryColor.withOpacity(0.5),
          ),
          Expanded(
            child: TabBarView(
              children: [
                tabOne,
                tabTwo,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
