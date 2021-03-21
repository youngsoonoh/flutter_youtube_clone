import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleImageButton extends StatelessWidget {
  final String url;
  final Function pressed;
  final double size;

  const CircleImageButton({
    Key key,
    this.url,
    this.pressed,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (_,imageProvider) => Container(
          height: size ?? 24,
          width: size ?? 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            )
          ),
        ),
        placeholder: (context, url) => CupertinoActivityIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
