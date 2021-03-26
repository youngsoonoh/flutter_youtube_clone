import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:youtube_clone/data/model/youtube_model.dart';
import 'package:youtube_clone/ui/app_style.dart';
import 'package:youtube_clone/ui/components/circle_image_button.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeListItem extends StatelessWidget {
  final YoutubeModel youtubeModel;

  const HomeListItem({Key key, @required this.youtubeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 시간 로컬화
    timeago.setLocaleMessages('ko', timeago.KoMessages());

    // 조회수 단축
    final _formattedCount = NumberFormat.compact().format(youtubeModel.count);

    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.black12,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        const Gap(10),
        Row(
          children: [
            CircleImageButton(
              size: 40,
              url: youtubeModel.channelThumbnailImg,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  youtubeModel.title,
                  style: AppStyle.titleTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      '${youtubeModel.channelName} ∙',
                      style: AppStyle.subTitleTextStyle,
                    ),
                    const Gap(5),
                    Text(
                      '조회수 $_formattedCount ∙',
                      style: AppStyle.subTitleTextStyle,
                    ),
                    const Gap(5),
                    Text(
                      timeago.format(youtubeModel.publishDateTime,
                          locale: 'ko'),
                      style: AppStyle.subTitleTextStyle,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Gap(15),
      ],
    );
  }
}
