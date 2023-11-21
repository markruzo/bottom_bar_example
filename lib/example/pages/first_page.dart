import 'package:bottom_bar_example/example/widgets/navigation_top.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Column(
          children: [
            const TopNavigation(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [Text('Content')],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
