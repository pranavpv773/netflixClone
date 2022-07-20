import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/downloads/downloads_bloc.dart';
import 'package:netflix_flutter/presentation/downloads/widgets/rotationimage_widget.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:netflix_flutter/presentation/widgets/appbar.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);
  final String title = "Downloads";
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
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
          child: ListView.separated(
            itemCount: _widgetList.length,
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {});
    BlocProvider.of<DownloadsBloc>(context).add(
      const DownloadsEvent.getDownloadsImages(),
    );
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: kButtonTransparent,
                      radius: size.width / 3.2,
                    ),
                    RotatonalImage(
                      image:
                          'https://image.tmdb.org/t/p/w500${state.downloads[7].posterPath}',
                      margin: const EdgeInsets.only(
                        left: 160,
                        bottom: 20,
                      ),
                      size: Size(size.width * 0.42, size.width * 0.68),
                      angle: 20,
                    ),
                    RotatonalImage(
                      image:
                          'https://image.tmdb.org/t/p/w500${state.downloads[11].posterPath}',
                      margin: const EdgeInsets.only(
                        right: 160,
                        bottom: 20,
                      ),
                      size: Size(size.width * 0.42, size.width * 0.68),
                      angle: -20,
                    ),
                    RotatonalImage(
                      image:
                          'https://image.tmdb.org/t/p/w500${state.downloads[3].posterPath}',
                      margin: const EdgeInsets.only(top: 0),
                      size: Size(size.width * 0.5, size.width * 0.65),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: kButtonBlue,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Set Up',
                  style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: MaterialButton(
            color: kButtonTransparent,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Find More to Download',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
