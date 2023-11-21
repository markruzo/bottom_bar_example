import 'package:bottom_bar_example/example/screens/first_screen.dart';
import 'package:bottom_bar_example/example/screens/fourth_screen.dart';
import 'package:bottom_bar_example/example/screens/second_screen.dart';
import 'package:bottom_bar_example/example/screens/third_screen.dart';
import 'package:bottom_bar_example/example/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class BottomBarExample extends StatefulWidget {
  const BottomBarExample({super.key});

  @override
  State<BottomBarExample> createState() => _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int _selectedIndex = 0;
  final List<String> _labels = ['Label 1', 'Label 2', 'Label 3', 'Label 4'];
  final List<String> _iconPaths = [
    'assets/icons/svg/x24/icon-placeholder.svg',
    'assets/icons/svg/x24/icon-placeholder.svg',
    'assets/icons/svg/x24/icon-placeholder.svg',
    'assets/icons/svg/x24/icon-placeholder.svg',
  ];
  final List<Widget> _pages = const [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < _pages.length; i++)
                      BottomBarItem(
                        index: i,
                        selectedIndex: _selectedIndex,
                        labels: _labels,
                        iconPaths: _iconPaths,
                        onTap: (index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
