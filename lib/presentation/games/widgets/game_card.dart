import 'package:flutter/material.dart';
import '../../utility/text_Widget/text_widget.dart';
import 'game_card_list.dart';
import 'image_list.dart';

class GameCards extends StatelessWidget {
  final String title;
  GameCards({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        LimitedBox(
          maxHeight: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              image.length,
              (index) => MainGameCard(
                image: image[index]['proImage'].toString(),
                name: image[index]['name'].toString(),
                subName: image[index]['subName'].toString(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
