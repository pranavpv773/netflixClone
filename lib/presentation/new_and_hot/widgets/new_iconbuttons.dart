import 'package:flutter/material.dart';

class NewIconButtons extends StatelessWidget {
  const NewIconButtons({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        )
      ],
    );
  }
}
