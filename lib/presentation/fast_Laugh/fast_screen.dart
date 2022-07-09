import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/fast_Laugh/fast_laugh_bloc.dart';
import 'package:netflix_flutter/presentation/fast_Laugh/widgets/video_list.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
    });

    return Scaffold(body: SafeArea(
      child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text("Error"),
            );
          } else if (state.videosList.isEmpty) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                state.videosList.length,
                (index) => VideoListItemInheritedWidget(
                  widget: VideoList(
                      key: Key(
                        index.toString(),
                      ),
                      index: index),
                  movieData: state.videosList[index],
                ),
              ),
            );
          }
        },
      ),
    ));
  }
}
