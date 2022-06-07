import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/utils/random_color.dart';
import 'package:insta_clone/widgets/circle_button_widget.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PostWidget extends StatefulWidget {
  PostWidget({Key? key}) : super(key: key);

  final favorites = Random().nextInt(100000);
  final numberFormat = NumberFormat('###,###,###,###');

  @override
  State<StatefulWidget> createState() => _PostWidget();

}

class _PostWidget extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                      Icons.circle,
                      size: 36,
                      color: RandomColor.getColor()
                  ),
                  const SizedBox(width: 10),
                  const Text('아이디아이디아이디'),
                ],
              ),
              IconButton(
                onPressed: () {
                  showMaterialModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        height: 370,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          color: Colors.white
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Container(
                              width: 30,
                              height: 5,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Colors.black45
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  CircleButtonWidget(
                                      label: '링크',
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.link_outlined,
                                        size: 30,
                                        color: Colors.black,
                                      )
                                  ),
                                  CircleButtonWidget(
                                      label: '공유',
                                      color: Colors.black,
                                      icon: Icon(
                                        Icons.share_outlined,
                                        size: 30,
                                        color: Colors.black,
                                      ),
                                  ),
                                  CircleButtonWidget(
                                      label: '신고',
                                      color: Colors.redAccent,
                                      icon: Icon(
                                        Icons.report_outlined,
                                        size: 30,
                                        color: Colors.redAccent,
                                      ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(height: 1),
                            const ListTile(
                              title: Text('이 릴스 리믹스하기')
                            ),
                            const ListTile(
                                title: Text('즐겨찾기에 추가')
                            ),
                            const ListTile(
                                title: Text('숨기기')
                            ),
                            const ListTile(
                                title: Text('팔로우 취소')
                            ),
                          ],
                        ),
                      )
                  );
                },
                icon: const Icon(
                  Icons.more_vert,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Container(
            height: 300,
            color: RandomColor.getColor(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                    ),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                      Icons.send_outlined,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.bookmark_border,
                ),
              )
            ],
          ),
          Text(
            '좋아요 ${widget.numberFormat.format(widget.favorites)}개',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
                fontSize: 16
            ),
          ),
          const SizedBox(height: 5),
          const Text.rich(
              TextSpan(
                  text: '아이디아이디아이디 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                  children: [
                    TextSpan(
                      text: 'abcdefgfdsfdsasdasfadsfdshij',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                      ),
                    )
                  ]
              )
          ),
          const Text(
            '#가나다 #라마바 #사아자 #차타파 #하',
            style: TextStyle(
              color: Color(0xFF111F6A)
            ),
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Icon(
                  Icons.circle,
                  size: 30,
                  color: RandomColor.getColor()
              ),
              const SizedBox(width: 7),
              const Text(
                  '댓글 달기...',
                style: TextStyle(
                  color: Colors.black45
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}