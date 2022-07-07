import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/main_page/searchBar/widgets/search_list_widget.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_up_outlined,
                    size: 30,
                    color: kWhite,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(imgUrl),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    VideoReactionsWidget(
                      icon: Icons.sentiment_very_satisfied_sharp,
                      title: "31.1K",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    VideoReactionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    VideoReactionsWidget(
                      icon: Icons.send_outlined,
                      title: "17.2K",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    VideoReactionsWidget(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class VideoReactionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoReactionsWidget(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhite,
          size: 30,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
