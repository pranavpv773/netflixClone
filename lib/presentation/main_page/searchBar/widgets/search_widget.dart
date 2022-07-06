import 'package:flutter/material.dart';

import '../../../utility/colors/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSearchTransparent,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8,
        ),
        child: TextField(
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            counterStyle: const TextStyle(color: Colors.white),
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: kSearchIcons,
              size: 30,
            ),
            suffixIcon: const Icon(
              Icons.mic,
              color: kSearchIcons,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: "Search for a show,movie,genre, etc.",
            hintStyle: const TextStyle(
              color: kSearchText,
            ),
          ),
        ),
      ),
    );
  }
}
