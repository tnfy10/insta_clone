import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/story_widget.dart';

class StoryListWidget extends StatefulWidget {
  const StoryListWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StoryListWidget();

}

class _StoryListWidget extends State<StoryListWidget> {

  List<Widget> getStoryItemList() {
    List<Widget> items = [const StoryWidget(id: '내 스토리'), const SizedBox(width: 10)];

    for (int i=0; i<5; i++) {
      items.add(const StoryWidget(id: 'idididid'));

      if (i != 4) {
        items.add(const SizedBox(width: 10));
      }
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE2E2E2)
          )
        )
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: getStoryItemList(),
          )
        ),
      ),
    );
  }

}