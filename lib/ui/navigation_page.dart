import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class NavigationPage extends StatelessWidget {
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
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.pink[500],
              radius: 12,
              child: Text('Y'),
            ),
          ),
          const Gap(10),
        ],
      ),
      body: Center(
        child: Text('Youtube Clone'),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
