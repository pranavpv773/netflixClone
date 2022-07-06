import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';
import 'package:netflix_flutter/presentation/widgets/appbar_user.dart';

import 'widgets/search_result.dart';
import 'widgets/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          children: const [
            SearchBarWidget(),
            Expanded(
              child: SearchResult(),
            ),
          ],
        ),
      ),
    );
  }
}
