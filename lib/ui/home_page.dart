import 'package:flutter/material.dart';
import 'package:youtube_clone/data/model/youtube_model.dart';

import 'widgets/home_list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: youtubeList.length,
        itemBuilder: (_, int index) {
      return HomeListItem(youtubeModel: youtubeList[index],);
    });
  }
}
