import 'package:flutter/material.dart';

class BottomNavigatonBar extends StatelessWidget {
  const BottomNavigatonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        )
      ],
    );
  }
}
