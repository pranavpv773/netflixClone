import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/main_page/searchBar/widgets/search_list_widget.dart';
import '../../../utility/colors/colors.dart';

class TopSearchList extends StatelessWidget {
  const TopSearchList({Key? key}) : super(key: key);

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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Expanded(
            child: Text(
              "  Stranger Things",
              style: TextStyle(
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
