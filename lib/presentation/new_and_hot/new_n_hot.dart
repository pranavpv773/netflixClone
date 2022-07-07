import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';

import '../home/home_screen.dart';
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
                        text: "🍿 Everone's Watching",
                      ),
                    ]),
              ),
            ),
            preferredSize: const Size.fromHeight(100),
          ),
          body: TabBarView(
            children: [
              _buidCommingSoon(),
              _buidEveryoneWatching(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buidCommingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoonWidget());
  }

  Widget _buidEveryoneWatching() {
    return const SizedBox();
  }
}

class NewIconButtons extends StatelessWidget {
  const NewIconButtons({Key? key, required this.icon, required this.title})
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
          size: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        )
      ],
    );
  }
}
