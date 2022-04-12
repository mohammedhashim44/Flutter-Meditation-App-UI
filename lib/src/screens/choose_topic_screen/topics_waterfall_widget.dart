import 'package:flutter/material.dart';
import 'package:meditation_app/src/screens/choose_topic_screen/topic_card_widget.dart';
import 'package:meditation_app/src/screens/choose_topic_screen/topics_dummy_data.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class TopicsWaterfallWidget extends StatefulWidget {
  const TopicsWaterfallWidget({Key? key}) : super(key: key);

  @override
  State<TopicsWaterfallWidget> createState() => _TopicsWaterfallWidgetState();
}

class _TopicsWaterfallWidgetState extends State<TopicsWaterfallWidget> {
  List<int> selectedTopics = [];

  @override
  Widget build(BuildContext context) {
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
      itemCount: topicsDummyData.length,
      itemBuilder: (BuildContext context, int index) {
        Topic topic = topicsDummyData[index];
        return GestureDetector(
          onTap: () => onTopicClicked(topic.id),
          child: TopicCardWidget(
            topic,
            isSelected: selectedTopics.contains(topic.id),
          ),
        );
      },
    );
  }

  void onTopicClicked(int id) {
    if (selectedTopics.contains(id)) {
      selectedTopics.remove(id);
    } else {
      selectedTopics.add(id);
    }
    setState(() {});
  }
}
