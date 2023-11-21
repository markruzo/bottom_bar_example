import 'package:bottom_bar_example/example/screens/first_screen.dart';
import 'package:bottom_bar_example/example/screens/fourth_screen.dart';
import 'package:bottom_bar_example/example/screens/second_screen.dart';
import 'package:bottom_bar_example/example/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarExample extends StatefulWidget {
  const BottomBarExample({super.key});

  @override
  State<BottomBarExample> createState() => _BottomBarExampleState();
}

class _BottomBarExampleState extends State<BottomBarExample> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
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
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/svg/x24/icon-placeholder.svg',
                                height: 24,
                                width: 24,
                                colorFilter: ColorFilter.mode(
                                  _selectedIndex == 0
                                      ? Colors.black
                                      : Colors.grey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Label',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 0
                                ? Colors.black
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/svg/x24/icon-placeholder.svg',
                                height: 24,
                                width: 24,
                                colorFilter: ColorFilter.mode(
                                  _selectedIndex == 1
                                      ? Colors.black
                                      : Colors.grey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Label',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 1
                                ? Colors.black
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/svg/x24/icon-placeholder.svg',
                                height: 24,
                                width: 24,
                                colorFilter: ColorFilter.mode(
                                  _selectedIndex == 2
                                      ? Colors.black
                                      : Colors.grey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Label',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 2
                                ? Colors.black
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/svg/x24/icon-placeholder.svg',
                                height: 24,
                                width: 24,
                                colorFilter: ColorFilter.mode(
                                  _selectedIndex == 3
                                      ? Colors.black
                                      : Colors.grey,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Label',
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == 3
                                ? Colors.black
                                : Colors.grey,
                          ),
                        )
                      ],
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
