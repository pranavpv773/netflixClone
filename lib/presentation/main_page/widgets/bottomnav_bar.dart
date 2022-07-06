import 'package:flutter/material.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigatonBarWidget extends StatelessWidget {
  const BottomNavigatonBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: kransparent,
            selectedItemColor: kWhite,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports),
                label: 'Games',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.smart_display),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sentiment_very_satisfied_rounded),
                label: 'Fast Laughs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_circle_down_rounded),
                label: 'Downloads',
              ),
            ],
          );
        });
  }
}
