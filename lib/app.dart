import 'package:bottom_bar_example/example/bottom_bar_example.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Bar Example',
      theme: ThemeData(
        fontFamily: 'DM Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const BottomBarExample(),
    );
  }
}
