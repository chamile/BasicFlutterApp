import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noa_mobile/src/screens/home/home_screen.dart';
import 'package:noa_mobile/src/screens/tabs/placeholder_widget.dart';

class MainTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainTabsState();
  }
}

class _MainTabsState extends State<MainTabs> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'lib/src/assets/images/home.svg',
                  fit: BoxFit.contain,
                ),
                label: 'Utforska'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'lib/src/assets/images/globe.svg',
                  color: Colors.black,
                  fit: BoxFit.contain,
                ),
                label: 'Inspiration'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'lib/src/assets/images/mytrips.svg',
                  color: Colors.black,
                  fit: BoxFit.contain,
                ),
                label: 'Mina Äventyr')
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
