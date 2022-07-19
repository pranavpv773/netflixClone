import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';
import '../../utility/constants/constants.dart';
import '../home_screen.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Container(
            width: size.width / 1.6,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: kRadius10,
              image: const DecorationImage(
                image: NetworkImage(
                  kMainImg,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconButtons(
                icon: Icons.check,
                title: "My List",
              ),
              _playButton(),
              const IconButtons(
                icon: Icons.info_outline_rounded,
                title: "Info",
              ),
            ],
          )
        ],
      ),
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(
          alignment: Alignment.bottomCenter,
          backgroundColor: MaterialStateProperty.all(kWhite)),
      onPressed: () {},
      icon: const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Icon(
          Icons.play_arrow,
          color: Colors.black,
          size: 30,
        ),
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Text(
          "Play",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
