import 'package:flutter/material.dart';
import '../../../utility/colors/colors.dart';

class TopSearchList extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchList({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kButtonTransparent,
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.34,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              Icons.play_circle_outline_rounded,
              color: kWhite,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
