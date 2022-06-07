import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_clone/pages/taps/home_tap.dart';
import 'package:insta_clone/pages/taps/my_tap.dart';
import 'package:insta_clone/pages/taps/reels_tap.dart';
import 'package:insta_clone/pages/taps/search_tap.dart';
import 'package:insta_clone/pages/taps/shop_tap.dart';
import 'package:insta_clone/utils/random_color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainPage();

}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomeTap(),
    SearchTap(),
    ReelsTap(),
    ShopTap(),
    MyTap()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'images/instagram_logo.svg',
          width: 100,
          height: 30,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
      Icons.add_box_outlined,
              color: Colors.black,
      ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(
          Icons.favorite_border_outlined,
              color: Colors.black,
          ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            onPressed: () {

            },
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ''
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ''
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.slideshow),
              label: ''
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.circle,
                  color: RandomColor.getColor()
              ),
              label: ''
          ),
        ],
        selectedFontSize: 0,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

}