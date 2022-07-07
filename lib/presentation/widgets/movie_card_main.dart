import 'package:flutter/material.dart';

import '../utility/constants/constants.dart';

class MainCard extends StatelessWidget {
  final String image;
  const MainCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ));
  }
}
