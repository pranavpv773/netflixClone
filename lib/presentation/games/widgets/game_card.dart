import 'package:flutter/material.dart';
import '../../utility/text_Widget/text_widget.dart';
import 'game_card_list.dart';

class GameCards extends StatelessWidget {
  final String title;
  final String image;
  const GameCards({Key? key, required this.title, required this.image})
      : super(key: key);

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
              20,
              (index) => MainGameCard(
                image: image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
