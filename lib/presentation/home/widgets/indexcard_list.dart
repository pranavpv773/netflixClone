import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/widgets/movie_alert_box.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

import '../../widgets/movie_alert_box.dart';

class IndexCardList extends StatelessWidget {
  final String image;
  final String overviewMovie;
  final int index;
  final String movieTitle;
  const IndexCardList(
      {Key? key,
      required this.image,
      required this.overviewMovie,
      required this.index,
      required this.movieTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showMovieDetails(context, image, overviewMovie, movieTitle);
      },
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 70,
                width: 30,
              ),
              Container(
                width: 110,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
            left: 0,
            top: 23,
            bottom: 0,
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
      ),
    );
  }
}
