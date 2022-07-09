import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';
import '../../application/hot_and_new/hot_and_new_bloc.dart';
import '../utility/colors/colors.dart';
import '../widgets/appbar_user.dart';
import 'widgets/cominsoon_widget.dart';

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
          body: TabBarView(
            children: [
              ComingSoonList(key: Key('coming_soon')),
              _buidEveryoneWatching(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buidCommingSoon() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
  //   );
  // }

  Widget _buidEveryoneWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        // return EveryonesWatching();
        return SizedBox();
      },
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(
        LoadDataInComingSoon(),
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
                return ComingSoonWidget(
                    id: movie.id.toString(),
                    month: "march",
                    day: '11',
                    posterPath: '$imageAppendUrl${movie.posterPath}',
                    movieName: movie.originalTitle ?? 'No Title',
                    description: movie.overview ?? 'No Description');
              });
        }
      },
    );
  }
}
