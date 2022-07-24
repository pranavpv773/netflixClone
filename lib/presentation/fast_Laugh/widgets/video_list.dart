import 'package:flutter/material.dart';
import 'package:netflix_flutter/application/fast_Laugh/fast_laugh_bloc.dart';
import 'package:netflix_flutter/domain/downloads/modals/downloads.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    final screenVideoUrls = videoUrls[index % videoUrls.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoUrl: screenVideoUrls,
          onStateChanged: (bool) {},
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
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: posterPath == null
                          ? null
                          : NetworkImage(
                              'https://image.tmdb.org/t/p/w500$posterPath'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const VideoReactionsWidget(
                      icon: Icons.sentiment_very_satisfied_sharp,
                      title: "31.1K",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const VideoReactionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const VideoReactionsWidget(
                        icon: Icons.send_outlined,
                        title: "17.2K",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const VideoReactionsWidget(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
                    const SizedBox(
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

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
