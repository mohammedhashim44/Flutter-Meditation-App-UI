import 'package:flutter/material.dart';
import 'icon_with_bottom_text.dart';

class IconWithBottomTextData {
  final String text;
  final IconData iconData;

  IconWithBottomTextData(this.text, this.iconData);
}

List<IconWithBottomTextData> icons = [
  IconWithBottomTextData("All", Icons.home),
  IconWithBottomTextData("My", Icons.favorite_border),
  IconWithBottomTextData("Anxious", Icons.tag_faces),
  IconWithBottomTextData("Sleep", Icons.bed),
  IconWithBottomTextData("Work", Icons.work),
  IconWithBottomTextData("Focus", Icons.desktop_windows),
];

class IconWithBottomTextRow extends StatefulWidget {
  final bool isDark;
  const IconWithBottomTextRow({
    Key? key,
    this.isDark = false,
  }) : super(key: key);

  @override
  _IconWithBottomTextRowState createState() => _IconWithBottomTextRowState();
}

class _IconWithBottomTextRowState extends State<IconWithBottomTextRow> {
  int selectedIndex = 0;

  void onItemSelected(int itemIndex) {
    setState(() {
      selectedIndex = itemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: icons.map((e) {
            int index = icons.indexOf(e);
            String text = e.text;
            IconData iconData = e.iconData;

            return GestureDetector(
              onTap: () {
                onItemSelected(index);
              },
              child: Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: IconWithBottomText(
                  text: text,
                  icon: iconData,
                  isSelected: selectedIndex == index,
                  isDark: widget.isDark,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
