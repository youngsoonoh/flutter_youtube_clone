import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube clone',
      home:NavigationPage(),
    );
  }
}
