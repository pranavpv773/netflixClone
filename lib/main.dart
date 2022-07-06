import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/main_page/tab_home.dart';
import 'package:netflix_flutter/presentation/splash/splash_screen.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

void main() {
  runApp(const NetfLixClone());
}

class NetfLixClone extends StatelessWidget {
  const NetfLixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
