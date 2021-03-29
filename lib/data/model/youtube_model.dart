import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_model.freezed.dart';
part 'youtube_model.g.dart';

@freezed
abstract class YoutubeModel with _$YoutubeModel {
  factory YoutubeModel({
    String title,
    String channelName,
    int count,
    String channelThumbnailImg,
    DateTime publishDateTime,
    String videoUrl,
  }) = _YoutubeModel;

  factory YoutubeModel.fromJson(Map<String, dynamic> json) =>
      _$YoutubeModelFromJson(json);
}

final youtubeList = [
  YoutubeModel(
      title: '유튜브 타이틀 1',
      channelName: '유튜브 채널 1',
      count: 100000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2020, 10, 5, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 2',
      channelName: '유튜브 채널 2',
      count: 1000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime.now(),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 3',
      channelName: '유튜브 채널 3',
      count: 100000000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2021, 3, 25, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 4',
      channelName: '유튜브 채널 4',
      count: 2000000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 3, 24, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 5',
      channelName: '유튜브 채널 5',
      count: 10000000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2021, 3, 5, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 6',
      channelName: '유튜브 채널 6',
      count: 1000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 1, 2, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 7',
      channelName: '유튜브 채널 7',
      count: 100000000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 2, 5, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 8',
      channelName: '유튜브 채널 8',
      count: 10000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2021, 3, 12, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 9',
      channelName: '유튜브 채널 9',
      count: 100000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 3, 25, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 10',
      channelName: '유튜브 채널 10',
      count: 10000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 3, 24, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 11',
      channelName: '유튜브 채널 11',
      count: 50000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2021, 2, 23, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 12',
      channelName: '유튜브 채널 12',
      count: 40000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 1, 5, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 13',
      channelName: '유튜브 채널 13',
      count: 30000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 3, 5, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 14',
      channelName: '유튜브 채널 14',
      count: 60000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 2, 15, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 15',
      channelName: '유튜브 채널 15',
      count: 100000000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 3, 5, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 16',
      channelName: '유튜브 채널 16',
      count: 10000000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2020, 12, 5, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 17',
      channelName: '유튜브 채널 17',
      count: 10000000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 1, 5, 12, 20, 5),
      videoUrl:
          'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 18',
      channelName: '유튜브 채널 18',
      count: 10000000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 1, 2, 12, 20, 5),
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 19',
      channelName: '유튜브 채널 19',
      count: 100000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 3, 22, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 20',
      channelName: '유튜브 채널 20',
      count: 1000000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 3, 24, 12, 20, 5),
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 21',
      channelName: '유튜브 채널 21',
      count: 1000000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2020, 3, 23, 12, 20, 5),
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 22',
      channelName: '유튜브 채널 22',
      count: 50000,
      channelThumbnailImg: 'https://placeimg.com/90/90/people',
      publishDateTime: DateTime(2021, 2, 15, 12, 20, 5),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 23',
      channelName: '유튜브 채널 23',
      count: 400000,
      channelThumbnailImg: 'https://placeimg.com/100/100/people',
      publishDateTime: DateTime(2020, 1, 15, 12, 20, 5),
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4'),
  YoutubeModel(
      title: '유튜브 타이틀 24',
      channelName: '유튜브 채널 24',
      count: 200000,
      channelThumbnailImg: 'https://placeimg.com/80/80/people',
      publishDateTime: DateTime(2021, 1, 5, 12, 20, 5),
      videoUrl:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4'),
];
