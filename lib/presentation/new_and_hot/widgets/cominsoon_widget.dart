import 'package:flutter/material.dart';
import '../../utility/colors/colors.dart';
import '../../utility/constants/constants.dart';
import 'new_iconbuttons.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
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
              children: [
                Text(
                  month,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  day,
                  style: const TextStyle(
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
                          posterPath,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
                          movieName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      const NewIconButtons(
                        icon: Icons.notifications_none_outlined,
                        title: "Remind Me",
                      ),
                      const NewIconButtons(
                        icon: Icons.info_outline,
                        title: "Info",
                      ),
                    ],
                  ),
                  kheight20,
                  Text("Coming on $day $month"),
                  kheight20,
                  Expanded(
                    child: Text(
                      description,
                      style: const TextStyle(color: Colors.grey),
                    ),
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
