import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/downloads/widgets/rotationimage_widget.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:netflix_flutter/presentation/widgets/appbar.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);
  final String title = "Downloads";
  final List imageList = [
    "https://www.themoviedb.org/t/p/original/q4ocQsuDe6DbFdEKc17Xb2AHbZh.jpg",
    "https://www.themoviedb.org/t/p/original/w7LgKmvUf6C67gMnQYWvQjgJdqm.jpg",
    "https://www.themoviedb.org/t/p/original/2MTMJljusJMFu9QSZfGnaY1B0UK.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: AppBarWidget(
              title: title,
            ),
          ),
          preferredSize: const Size.fromHeight(50),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.settings,
                    color: kGrey,
                  ),
                  Text(
                    "  Smart Downloads",
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "Introducing Downloads for You",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  "Well download a personalised selection of movies and shows for you, so there's always something to watch on your phone.",
                  style: TextStyle(
                    color: kGrey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: kButtonTransparent,
                      radius: size.width / 3.2,
                    ),
                    RotatonalImage(
                      image: imageList[2],
                      margin: const EdgeInsets.only(
                        left: 160,
                        bottom: 20,
                      ),
                      size: Size(size.width * 0.42, size.width * 0.68),
                      angle: 20,
                    ),
                    RotatonalImage(
                      image: imageList[1],
                      margin: const EdgeInsets.only(
                        right: 160,
                        bottom: 20,
                      ),
                      size: Size(size.width * 0.42, size.width * 0.68),
                      angle: -20,
                    ),
                    RotatonalImage(
                      image: imageList[0],
                      margin: const EdgeInsets.only(top: 0),
                      size: Size(size.width * 0.5, size.width * 0.65),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                color: kButtonBlue,
                onPressed: () {},
                child: const Text(
                  'Set Up',
                  style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: MaterialButton(
                  color: kButtonTransparent,
                  onPressed: () {},
                  child: const Text(
                    'Find More to Download',
                    style: TextStyle(
                      color: kWhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
