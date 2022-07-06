import 'dart:math';

import 'package:flutter/material.dart';

class RotatonalImage extends StatelessWidget {
  const RotatonalImage({Key? key, required this.image, this.angle = 0})
      : super(key: key);
  final double angle;
  final String image;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
