import 'package:flutter/material.dart';

import 'game_video_cards.dart';
import 'image_list.dart';

class VideoGameCards extends StatelessWidget {
  const VideoGameCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(
        image.length,
        (index) => GameVideoCards(
          image: image[index]['proImage'].toString(),
          name: image[index]['name'].toString(),
          subName: image[index]['subName'].toString(),
        ),
      ),
    );
  }
}
