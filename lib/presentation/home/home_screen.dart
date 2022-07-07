import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_flutter/presentation/home/widgets/background_card.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';
import 'widgets/home_movie_cards.dart';
import 'widgets/index_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      ListView(
                        children: const [
                          BackgroundCard(),
                          HomeMovieCards(
                            title: "Indian Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/8BzuwDAMamf5TX4TepbDDEq7ima.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Trending Now",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Only on Netflix",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          IndexMovieCard(
                            title: "Top 10 TV Movies in India Today",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "US TV Shows",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "New Releases",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          IndexMovieCard(
                            title: "Top 10 TV Shows in India Today",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Downloads For You",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "TV Comedies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Blockbuster US Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Bingeworthy TV Shows",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Hindi-Language Dramas",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Blockbuster Romantic Dramas",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Action Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Young Adult Movies & Shows",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Hindi-Language Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Blockbuster Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Anime",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "International TV Shows",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Bollywood Movies",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Made in India",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Epic Worlds",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "Romantic Dramas",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                          kheight30,
                          HomeMovieCards(
                            title: "TV Sci-Fi Fantasy",
                            image:
                                "https://www.themoviedb.org/t/p/original/2Wf5ySCPcnp8lRhbSD7jt0YLz5A.jpg",
                          ),
                        ],
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
                                      Container(
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
                                      kheight30,
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, left: 10),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
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
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
