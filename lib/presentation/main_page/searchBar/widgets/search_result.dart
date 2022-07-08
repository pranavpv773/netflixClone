import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/main_page/searchBar/widgets/search_title.dart';

const gridImage =
    "https://www.themoviedb.org/t/p/original/2MTMJljusJMFu9QSZfGnaY1B0UK.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movies & TV'),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              20,
              (index) {
                return const MainMovieCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MainMovieCard extends StatelessWidget {
  const MainMovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: const DecorationImage(
          image: NetworkImage(gridImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
