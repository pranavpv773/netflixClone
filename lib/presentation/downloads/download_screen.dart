import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:netflix_flutter/presentation/widgets/appbar.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);
  final String title = "Downloads";
  final List imageList = [
    " https://www.themoviedb.org/t/p/original/u6Pg9eTklhg6Aa7kXaxrfdE1Chi.jpg;"
        "https://www.themoviedb.org/t/p/original/61PVJ06oecwvcBisoAQu6SDfdcS.jpg"
        "https://www.themoviedb.org/t/p/original/12emRmOJabDFMjrDEw2P1xRsLyg.jpg"
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
                children: const [
                  Icon(
                    Icons.settings,
                    color: kGrey,
                  ),
                  Text(
                    "Smart Downloads",
                    style: TextStyle(
                      color: kGrey,
                    ),
                  )
                ],
              ),
              const Text(
                "Introducing Downloads for You",
              ),
              const Text(
                "Well download a personalised selection of movies and shows for you, so there's always something to watch on your device.",
                style: TextStyle(
                  color: kGrey,
                ),
              ),
              Container(
                width: size.width,
                height: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: kButtonTransparent,
                      radius: size.width / 3.5,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                color: kButtonBlue,
                onPressed: () {},
                child: const Text(
                  'Set Up',
                  style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
              ),
              MaterialButton(
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
            ],
          ),
        ),
      ),
    );
  }
}
