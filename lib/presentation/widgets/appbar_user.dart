import 'package:flutter/material.dart';

class AppBarUser extends StatelessWidget {
  const AppBarUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/blueIcon.png",
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
