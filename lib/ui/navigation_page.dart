import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:youtube_clone/ui/components/circle_image_button.dart';
import 'package:youtube_clone/ui/explore_page.dart';
import 'package:youtube_clone/ui/home_page.dart';
import 'package:youtube_clone/ui/library_page.dart';
import 'package:youtube_clone/ui/subscriptions_page.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgets = [
    HomePage(),
    ExplorePage(),
    SubscriptionsPage(),
    LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.youtube),
          color: Colors.red,
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        centerTitle: false,
        title: Text(
          'Premium',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.cast,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          CircleImageButton(
            url: 'https://placeimg.com/100/100/people',
            size: 24,
            pressed: () {},
          ),
          const Gap(10),
        ],
      ),
      body: _widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex > 1 ?
                      _selectedIndex + 1 :
                      _selectedIndex,
        onTap: (index) {
          if (index == 2) {
            return;
          }
          setState(() {
            if (index > 2) {
              _selectedIndex = index - 1;
            } else {
              _selectedIndex = index;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: '탐색',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 48,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.subscriptions),
            icon: Icon(Icons.subscriptions_outlined),
            label: '구독',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.video_library),
            icon: Icon(Icons.video_library_outlined),
            label: '보관함',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
