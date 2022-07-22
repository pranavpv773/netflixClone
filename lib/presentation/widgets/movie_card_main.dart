import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/widgets/movie_alert_box.dart';

import '../utility/constants/constants.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  final String overviewMovie;
  final String titleMovie;
  const MainCard(
      {Key? key,
      required this.imageUrl,
      required this.overviewMovie,
      required this.titleMovie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showMovieDetails(context, imageUrl, overviewMovie, titleMovie);
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 110,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
