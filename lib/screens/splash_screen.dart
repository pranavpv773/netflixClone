import 'package:flutter/material.dart';
import 'package:netflix_flutter/screens/home_screen.dart';

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/netflixSplash.jpg",
          ),
          fit: BoxFit.fill,
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
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) {
          return const NetflixHOme();
        },
      ),
    );
  }
}
