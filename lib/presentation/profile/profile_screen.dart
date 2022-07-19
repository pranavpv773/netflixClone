import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/home/home_screen.dart';
import 'package:netflix_flutter/presentation/main_page/tab_home.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "Netflix",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.create,
                size: 20,
              ),
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "who's Watching?",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return NetflixTab();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/blueIcon.png',
                          width: size.width / 4,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'pranavpv773',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    onTap:
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return NetflixTab();
                          },
                        ),
                      );
                    };
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/netflixRedWhos.png',
                          width: size.width / 4,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'pranavpv',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return NetflixTab();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/greenNetflixWhos.png',
                          width: size.width / 4,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'PV',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Icon(
                        Icons.add_circle_rounded,
                        size: size.width / 6,
                        color: kWhite,
                      ),
                      const SizedBox(height: 30),
                      const Text('Add Profile')
                    ],
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
