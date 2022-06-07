import 'package:flutter/cupertino.dart';
import 'package:insta_clone/widgets/post_widget.dart';
import 'package:insta_clone/widgets/story_list_widget.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeTap();

}

class _HomeTap extends State<HomeTap> {

  List<Widget> getPostList() {
    List<Widget> list = [const StoryListWidget()];

    for (int i=0; i<20; i++) {
      list.add(PostWidget());
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: getPostList(),
      ),
    );
  }

}