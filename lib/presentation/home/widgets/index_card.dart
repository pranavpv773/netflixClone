import 'package:flutter/material.dart';

import '../../utility/constants/constants.dart';
import '../../utility/text_Widget/text_widget.dart';
import 'indexcard_list.dart';

class IndexMovieCard extends StatelessWidget {
  const IndexMovieCard({Key? key, required this.title})
      : super(
          key: key,
        );
  final String title;
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
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              20,
              (index) => IndexCardList(
                image:
                    "https://www.themoviedb.org/t/p/original/2MTMJljusJMFu9QSZfGnaY1B0UK.jpg",
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
