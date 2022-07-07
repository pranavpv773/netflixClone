import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/fast_Laugh/widgets/video_list.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoList(
              index: index,
            ),
          )),
    ));
  }
}
