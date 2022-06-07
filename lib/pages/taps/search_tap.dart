import 'package:flutter/cupertino.dart';

class SearchTap extends StatefulWidget {
  const SearchTap({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchTap();

}

class _SearchTap extends State<SearchTap> {
  @override
  Widget build(BuildContext context) {
    return Text('search');
  }

}