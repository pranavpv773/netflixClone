import 'dart:math';

import 'package:flutter/material.dart';

class RotatonalImage extends StatelessWidget {
  const RotatonalImage(
      {Key? key,
      required this.image,
      required this.margin,
      required this.size,
      this.angle = 0})
      : super(key: key);
  final double angle;
  final String image;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(
            image: NetworkImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
