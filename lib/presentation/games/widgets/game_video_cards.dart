import 'package:flutter/material.dart';

import '../../utility/colors/colors.dart';

class GameVideoCards extends StatelessWidget {
  final String image;
  final String name;
  final String subName;
  const GameVideoCards({
    Key? key,
    required this.image,
    required this.name,
    required this.subName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                right: 20,
                left: 0,
                top: 70,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle_fill,
                    size: 60,
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 18.0,
          ),
          child: ListTile(
            leading: Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              name,
              style: const TextStyle(
                color: kWhite,
              ),
            ),
            subtitle: Text(
              subName,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
