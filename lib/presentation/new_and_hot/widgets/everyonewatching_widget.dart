import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';
import 'new_iconbuttons.dart';

class EveryonesWatching extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryonesWatching({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  posterPath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              right: 10,
              left: 10,
              top: 70,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black.withOpacity(0.29),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off_outlined,
                    size: 25,
                    color: kWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  movieName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kWhite,
                  ),
                ),
              ),
              const NewIconButtons(
                icon: Icons.share,
                title: "Share",
              ),
              const NewIconButtons(
                icon: Icons.check,
                title: "My List",
              ),
              const NewIconButtons(
                icon: Icons.play_arrow,
                title: "Play",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
