import 'package:flutter/material.dart';

class AppBarUser extends StatelessWidget {
  const AppBarUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
            "assets/blueIcon.png",
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
