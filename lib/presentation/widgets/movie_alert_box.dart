import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../utility/colors/colors.dart';
import '../utility/constants/constants.dart';

showMovieDetails(
    BuildContext context, String image, String overView, String titleMovie) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 37, 35, 35),
        title: Container(
          width: 110,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle_fill,
                size: 60,
                color: kWhite,
              ),
            ),
          ),
        ),
        content: Text(
          titleMovie,
          style: const TextStyle(color: Colors.grey),
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(overView),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconButtons(
                    icon: Icons.check,
                    title: "My List",
                  ),
                  IconButtons(
                    icon: Icons.info,
                    title: "More Info",
                  ),
                  IconButtons(
                    icon: Icons.download_outlined,
                    title: "Download",
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
}
