import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/downloads/download_screen.dart';
import 'package:netflix_flutter/presentation/fast_Laugh/fast_screen.dart';
import 'package:netflix_flutter/presentation/games/games_screen.dart';
import 'package:netflix_flutter/presentation/home/home_screen.dart';
import 'package:netflix_flutter/presentation/main_page/widgets/bottomnav_bar.dart';
import 'package:netflix_flutter/presentation/new_and_hot/new_n_hot.dart';

class NetflixTab extends StatelessWidget {
  NetflixTab({Key? key}) : super(key: key);

  final _screens = [
    const HomeScreen(),
    const GamesScreen(),
    const NewNhotScreen(),
    const FastLaughScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _screens[index];
        },
      ),
      bottomNavigationBar: const BottomNavigatonBarWidget(),
    );
  }
}
