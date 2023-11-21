import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
          child: Center(
        child: Text('Fourth Screen'),
      )),
    );
  }
}
