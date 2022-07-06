import 'package:flutter/material.dart';

import '../main_page/tab_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goNetflixHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/netflixSplash.png",
          ),
        ),
      ),
    );
  }

  Future<void> goNetflixHome() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return NetflixTab();
        },
      ),
    );
  }
}
