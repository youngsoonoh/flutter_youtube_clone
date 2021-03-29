import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube_clone/data/model/youtube_model.dart';
import 'package:youtube_clone/ui/app_style.dart';
import 'package:youtube_clone/ui/components/circle_image_button.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeListItem extends StatefulWidget {
  final YoutubeModel youtubeModel;

  const HomeListItem({Key key, @required this.youtubeModel}) : super(key: key);

  @override
  _HomeListItemState createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.network(widget.youtubeModel.videoUrl)
          ..initialize();
    _videoPlayerController.setVolume(0);
  }

  @override
  Widget build(BuildContext context) {
    // 시간 로컬화
    timeago.setLocaleMessages('ko', timeago.KoMessages());

    // 조회수 단축
    final _formattedCount =
        NumberFormat.compact().format(widget.youtubeModel.count);

    return Column(
      children: [
        VisibilityDetector(
          key: Key(hashCode.toString() + DateTime.now().toString()),
          onVisibilityChanged: (info) {
            if (info.visibleFraction >= 1) {
              _videoPlayerController.play();
            } else {
              _videoPlayerController.pause();
            }
          },
          child: AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController)),
        ),
        const Gap(10),
        Row(
          children: [
            CircleImageButton(
              size: 40,
              url: widget.youtubeModel.channelThumbnailImg,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.youtubeModel.title,
                  style: AppStyle.titleTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      '${widget.youtubeModel.channelName} ∙',
                      style: AppStyle.subTitleTextStyle,
                    ),
                    const Gap(5),
                    Text(
                      '조회수 $_formattedCount ∙',
                      style: AppStyle.subTitleTextStyle,
                    ),
                    const Gap(5),
                    Text(
                      timeago.format(widget.youtubeModel.publishDateTime,
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
