import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

import '../../utility/constants/constants.dart';

class IndexCardList extends StatelessWidget {
  final String image;
  final int index;
  const IndexCardList({Key? key, required this.image, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 70,
              width: 30,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -10,
          top: 65,
          bottom: 10,
          child: BorderedText(
            strokeColor: kWhite,
            strokeWidth: 4,
            child: Text(
              "${index + 1}",
              style: const TextStyle(fontSize: 130, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
