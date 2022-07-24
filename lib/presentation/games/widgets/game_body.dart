import 'package:flutter/material.dart';
import '../../utility/constants/constants.dart';
import 'game_card.dart';
import 'game_video_cards.dart';
import 'image_list.dart';

class GameBodyWidget extends StatelessWidget {
  const GameBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: kRadius10,
              image: const DecorationImage(
                image: NetworkImage(
                  "https://media1.popsugar-assets.com/files/thumbor/b0_ChK1BV5mCKCLaXgZSh_Fn25Q/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2022/01/19/729/n/1922507/a54f6011d1a197fe_IMG_5853/i/Teeter-Up-on-Netflix-Games.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        kheight20,
        const GameCards(
          title: "All Mobile Games",
        ),
        GameVideoCards(
          image: image[0]['proImage'],
          name: image[0]['name'],
          subName: image[0]['subName'],
        ),
        GameVideoCards(
          image: image[1]['proImage'],
          name: image[1]['name'],
          subName: image[1]['subName'],
        ),
        GameVideoCards(
          image: image[2]['proImage'],
          name: image[2]['name'],
          subName: image[2]['subName'],
        ),
        GameVideoCards(
          image: image[3]['proImage'],
          name: image[3]['name'],
          subName: image[3]['subName'],
        ),
        GameVideoCards(
          image: image[4]['proImage'],
          name: image[4]['name'],
          subName: image[4]['subName'],
        ),
        GameVideoCards(
          image: image[5]['proImage'],
          name: image[5]['name'],
          subName: image[5]['subName'],
        ),
        GameVideoCards(
          image: image[6]['proImage'],
          name: image[6]['name'],
          subName: image[6]['subName'],
        ),
        GameVideoCards(
          image: image[7]['proImage'],
          name: image[7]['name'],
          subName: image[7]['subName'],
        ),
        GameVideoCards(
          image: image[8]['proImage'],
          name: image[8]['name'],
          subName: image[8]['subName'],
        ),
      ],
    );
  }
}
