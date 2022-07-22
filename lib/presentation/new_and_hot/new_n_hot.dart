import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';
import '../../application/hot_and_new/hot_and_new_bloc.dart';
import '../utility/colors/colors.dart';
import '../widgets/appbar_user.dart';
import 'widgets/cominsoon_widget.dart';
import 'widgets/everyonewatching_widget.dart';

class NewNhotScreen extends StatelessWidget {
  const NewNhotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: AppBar(
                automaticallyImplyLeading: false,
                title: const Text(
                  "New & Hot",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: kWhite,
                            size: 30,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const AppBarUser(),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
                bottom: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: kWhite,
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    tabs: const [
                      Tab(
                        text: "🍿 Comming Soon",
                      ),
                      Tab(
                        text: "🔥 Everone's Watching",
                      ),
                    ]),
              ),
            ),
            preferredSize: const Size.fromHeight(100),
          ),
          body: const TabBarView(
            children: [
              ComingSoonList(key: Key('coming_soon')),
              EveryOneIsWatchingList(
                key: Key('every_one_is_watching'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(
        const LoadDataInComingSoon(),
      );
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.hasError) {
          return const Center(child: Text("error while Loading"));
        } else if (state.comingSoonList.isEmpty) {
          return const Center(child: Text("Coming Soon list is empty"));
        } else {
          return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (BuildContext context, index) {
                final movie = state.comingSoonList[index];

                if (movie.id == null) {
                  return const SizedBox();
                }
                final _date = DateTime.parse(movie.releaseDate!);
                final formatedDate = DateFormat.yMMMd('en_US').format(_date);

                return ComingSoonWidget(
                  id: movie.id.toString(),
                  month: formatedDate
                      .split(' ')
                      .first
                      .substring(0, 3)
                      .toUpperCase(),
                  day: movie.releaseDate!.split('-')[1],
                  posterPath: '$imageAppendUrl${movie.posterPath}',
                  movieName: movie.originalTitle ?? 'No Title',
                  description: movie.overview ?? 'No Description',
                );
              });
        }
      },
    );
  }
}

class EveryOneIsWatchingList extends StatelessWidget {
  const EveryOneIsWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(
        const LoadDataInEveryoneIsWatching(),
      );
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.hasError) {
          return const Center(child: Text("error while Loading"));
        } else if (state.everyOneWatchingList.isEmpty) {
          return const Center(child: Text("Coming Soon list is empty"));
        } else {
          return ListView.builder(
              itemCount: state.everyOneWatchingList.length,
              itemBuilder: (BuildContext context, index) {
                final movie = state.everyOneWatchingList[index];

                if (movie.id == null) {
                  return const SizedBox();
                }
                final tv = state.everyOneWatchingList[index];
                return EveryonesWatching(
                    posterPath: '$imageAppendUrl${tv.posterPath}',
                    movieName: tv.originalName ?? 'No Title',
                    description: tv.overview ?? 'No Overview');
              });
        }
      },
    );
  }
}
