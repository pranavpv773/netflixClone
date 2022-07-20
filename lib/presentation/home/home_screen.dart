import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/home/home_bloc.dart';
import 'package:netflix_flutter/presentation/home/widgets/background_card.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';
import '../../application/downloads/downloads_bloc.dart';
import '../main_page/searchBar/search_screen.dart';
import 'widgets/home_movie_cards.dart';
import 'widgets/index_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(
        const GetHomeScreenData(),
      );
    });
    BlocProvider.of<DownloadsBloc>(context).add(
      const DownloadsEvent.getDownloadsImages(),
    );
    return SafeArea(
      child: Scaffold(
          body: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (BuildContext context, index, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state.isLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state.hasError) {
                            return const Center(
                              child: Text('Error while loading'),
                            );
                          }
                          final _releasedPastYear =
                              state.pastYearMovieList.map((m) {
                            return "$imageAppendUrl${m.posterPath}";
                          }).toList();
                          _releasedPastYear.shuffle();
                          final _trending = state.trendingMovieList.map((m) {
                            return "$imageAppendUrl${m.posterPath}";
                          }).toList();
                          _trending.shuffle();
                          final _tenseDramas =
                              state.tenseDramaMovieList.map((m) {
                            return "$imageAppendUrl${m.posterPath}";
                          }).toList();
                          _tenseDramas.shuffle();
                          final _southIndian =
                              state.southIndianMovieList.map((m) {
                            return "$imageAppendUrl${m.posterPath}";
                          }).toList();
                          _southIndian.shuffle();

                          final _top10TvShow = state.trendingTvList.map((t) {
                            return '$imageAppendUrl${t.posterPath}';
                          }).toList();
                          _top10TvShow.shuffle();
                          final _top10MovieShow =
                              state.trendingMovieList.map((t) {
                            return '$imageAppendUrl${t.posterPath}';
                          }).toList();
                          _top10MovieShow.shuffle();
                          return ListView(
                            children: [
                              const BackgroundCard(),
                              HomeMovieCards(
                                title: "Indian Movies",
                                posterList: _releasedPastYear.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Trending Now",
                                posterList: _trending,
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Only on Netflix",
                                posterList: _tenseDramas,
                              ),
                              kheight30,
                              IndexMovieCard(
                                title: "Top 10 TV Movies in India Today",
                                postersList: _top10TvShow.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "US TV Shows",
                                posterList: _southIndian,
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "New Releases",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                              kheight30,
                              IndexMovieCard(
                                title: "Top 10 TV Shows in India Today",
                                postersList: _top10MovieShow.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Downloads For You",
                                posterList: _southIndian.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "TV Comedies",
                                posterList: _trending.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Blockbuster US Movies",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Bingeworthy TV Shows",
                                posterList: _releasedPastYear.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Hindi-Language Dramas",
                                posterList: _southIndian.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Blockbuster Romantic Dramas",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Action Movies",
                                posterList: _trending.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Young Adult Movies & Shows",
                                posterList: _releasedPastYear.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Hindi-Language Movies",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Blockbuster Movies",
                                posterList: _southIndian.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Anime",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "International TV Shows",
                                posterList: _trending.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Bollywood Movies",
                                posterList: _releasedPastYear.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Made in India",
                                posterList: _southIndian.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Epic Worlds",
                                posterList: _releasedPastYear.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "Romantic Dramas",
                                posterList: _trending.sublist(0, 10),
                              ),
                              kheight30,
                              HomeMovieCards(
                                title: "TV Sci-Fi Fantasy",
                                posterList: _tenseDramas.sublist(0, 10),
                              ),
                            ],
                          );
                        },
                      ),
                      scrollNotifier.value == true
                          ? AnimatedContainer(
                              duration: const Duration(milliseconds: 1200),
                              width: double.infinity,
                              height: 90,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/netflixN.png",
                                        width: 30,
                                        height: 30,
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (ctx) =>
                                                  const SearchScreen(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/search1.png",
                                              ),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      kheight30,
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10.0,
                                          left: 10,
                                        ),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/blueIcon.png",
                                              ),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          "TV Shows",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Movies",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Categories",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          : kheight20
                    ],
                  ),
                );
              })),
    );
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
