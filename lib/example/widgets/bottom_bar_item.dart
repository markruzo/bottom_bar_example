import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final List<String> labels;
  final List<String> iconPaths;
  final Function onTap;

  const BottomBarItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.labels,
    required this.iconPaths,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => onTap(index),
          child: SizedBox(
            height: 24,
            width: 24,
            child: Center(
              child: SvgPicture.asset(
                iconPaths[index],
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == index ? Colors.black : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        Text(
          labels[index],
          style: TextStyle(
            fontSize: 12,
            color: selectedIndex == index ? Colors.black : Colors.grey,
          ),
        )
      ],
    );
  }
}
