import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Icon > Title > Icon > Icon

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/svg/x24/icon-placeholder.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Top Navigation',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/svg/x24/icon-placeholder.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/svg/x24/icon-placeholder.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
