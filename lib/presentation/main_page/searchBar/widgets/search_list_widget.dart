import 'package:flutter/material.dart';

import 'search_title.dart';
import 'top_searchlist.dart';

const imgUrl =
    "https://www.themoviedb.org/t/p/original/oMkVNujGNmGmfNeHwxcUF6mncQJ.jpg";

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          title: "Top Searches",
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchList(),
            separatorBuilder: (context, index) => const Divider(
              height: 6,
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
