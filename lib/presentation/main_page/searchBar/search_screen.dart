import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/search/search_bloc.dart';
import 'package:netflix_flutter/presentation/main_page/searchBar/widgets/search_list_widget.dart';
import 'package:netflix_flutter/presentation/main_page/searchBar/widgets/search_result.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:netflix_flutter/presentation/widgets/appbar_user.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: AppBarUser(),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                  onChanged: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                    BlocProvider.of<SearchBloc>(context).add(
                      SearchMovie(movieQuery: value),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultList.isEmpty) {
                    return const SearchListWidget();
                  } else {
                    return const SearchResult();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
