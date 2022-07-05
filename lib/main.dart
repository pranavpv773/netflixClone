import 'package:flutter/material.dart';
import 'package:netflix_flutter/screens/splash_screen.dart';

void main() {
  runApp(const NetfLixClone());
}

class NetfLixClone extends StatelessWidget {
  const NetfLixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
