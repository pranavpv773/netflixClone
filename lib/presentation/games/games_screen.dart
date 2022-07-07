import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/games/widgets/game_body.dart';

import '../widgets/appbar.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.all(5),
                    title: AppBarWidget(title: "Games"),
                  ),
                ),
              ];
            },
            body: const GameBodyWidget()),
      ),
    );
  }
}
