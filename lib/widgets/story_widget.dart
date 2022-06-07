import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/unicorn_outline_button.dart';

class StoryWidget extends StatefulWidget {
  final String id;

  const StoryWidget({
    Key? key,
    required this.id
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StoryWidget();

}

class _StoryWidget extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UnicornOutlineButton(
              strokeWidth: 2,
              radius: 50,
              gradient: const LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.orange,
                  Colors.red,
                  Colors.redAccent
                ]
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/549171896013438979/rqtU6Cvn_400x400.png'
                ),
              ),
              onPressed: () {

              }
          ),
          const SizedBox(height: 3),
          Text(
            widget.id,
            style: const TextStyle(
              fontSize: 12
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

}