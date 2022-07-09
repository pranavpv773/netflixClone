import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/search/search_bloc.dart';
import 'package:netflix_flutter/presentation/utility/constants/constants.dart';

import 'search_title.dart';
import 'top_searchlist.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("error while getting data"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("List is empty"),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = state.idleList[index];
                  return TopSearchList(
                      title: movie.title ?? 'No Title Provided',
                      imageUrl: '$imageAppendUrl${movie.posterPath}');
                },
                separatorBuilder: (context, index) => const Divider(
                  height: 6,
                ),
                itemCount: state.idleList.length,
              );
            },
          ),
        )
      ],
    );
  }
}
