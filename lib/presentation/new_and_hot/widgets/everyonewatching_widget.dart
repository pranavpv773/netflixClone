import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';
import 'new_iconbuttons.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    Key? key,
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
                  "https://www.themoviedb.org/t/p/original/5pVJ9SuuO72IgN6i9kMwQwnhGHG.jpg",
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
            children: const [
              Text(
                "SPIDER-MAN ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 170, 53, 45),
                ),
              ),
              NewIconButtons(
                icon: Icons.share,
                title: "Share",
              ),
              NewIconButtons(
                icon: Icons.check,
                title: "My List",
              ),
              NewIconButtons(
                icon: Icons.play_arrow,
                title: "Play",
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "A small-town magician with zero interest in football must lead his local team to the finals of a tournament if he wisheses to marry the love of his life",
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
