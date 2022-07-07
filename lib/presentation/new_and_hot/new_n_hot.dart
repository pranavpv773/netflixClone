import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/new_and_hot/widgets/new_appbar.dart';

class NewNhotScreen extends StatelessWidget {
  const NewNhotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: NewAppBar(
              title: "New & Hot",
            ),
          ),
          preferredSize: Size.fromHeight(50),
        ),
        body: Center(
          child: Text("NewNhotScreen"),
        ),
      ),
    );
  }
}
