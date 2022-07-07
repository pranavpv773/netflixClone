import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';
import '../../utility/constants/constants.dart';
import '../new_n_hot.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 50,
            height: 400,
            child: Column(
              children: const [
                Text(
                  "Feb",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: kWhite,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 400,
              width: size.width - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Image.network(
                          "https://www.themoviedb.org/t/p/original/zx1SbUeuafTm1s5jbcvzg3F1JUD.jpg",
                          fit: BoxFit.fill,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "JAADUGAR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.amber,
                        ),
                      ),
                      NewIconButtons(
                        icon: Icons.notifications_none_outlined,
                        title: "Remind Me",
                      ),
                      NewIconButtons(
                        icon: Icons.info_outline,
                        title: "Info",
                      ),
                    ],
                  ),
                  kheight20,
                  const Text("Coming on 15 July"),
                  kheight20,
                  const Text(
                    "A small-town magician with zero interest in football must lead his local team to the finals of a tournament if he wisheses to marry the love of his life",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
