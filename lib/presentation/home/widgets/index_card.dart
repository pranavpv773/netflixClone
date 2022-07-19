import 'package:flutter/material.dart';

import '../../utility/constants/constants.dart';
import '../../utility/text_Widget/text_widget.dart';
import 'indexcard_list.dart';

class IndexMovieCard extends StatelessWidget {
  const IndexMovieCard(
      {Key? key, required this.title, required this.postersList})
      : super(
          key: key,
        );
  final String title;
  final List<String> postersList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kheight20,
        LimitedBox(
          maxHeight: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              postersList.length,
              (index) => IndexCardList(
                image: postersList[index],
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
