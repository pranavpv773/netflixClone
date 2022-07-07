import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import '../../utility/constants/constants.dart';
import 'game_card.dart';

class GameBodyWidget extends StatelessWidget {
  const GameBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: kRadius10,
              image: const DecorationImage(
                  image: NetworkImage(
                    "https://media1.popsugar-assets.com/files/thumbor/b0_ChK1BV5mCKCLaXgZSh_Fn25Q/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2022/01/19/729/n/1922507/a54f6011d1a197fe_IMG_5853/i/Teeter-Up-on-Netflix-Games.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        kheight20,
        const GameCards(
          title: "All Mobile Games",
          image:
              "https://play-lh.googleusercontent.com/mtzRP6PaHnZXyBTH8vAw7aPHllEqNbNHhDJ-u7r-ct2-1ZczGM11GhaJ3Xp5ZTonLXI",
        ),
        // ListView(
        //   scrollDirection: Axis.vertical,
        //   children: List.generate(20, (index) => GameVideoCards()),
        // )
      ],
    );
  }
}

class GameVideoCards extends StatelessWidget {
  const GameVideoCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: ListTile(
            leading: Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://play-lh.googleusercontent.com/mtzRP6PaHnZXyBTH8vAw7aPHllEqNbNHhDJ-u7r-ct2-1ZczGM11GhaJ3Xp5ZTonLXI",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Shooting Hoops",
              style: TextStyle(color: kWhite),
            ),
            subtitle: const Text(
              "Arcade",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
