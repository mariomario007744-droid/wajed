import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final int activeIndex;

  const OnboardingPageIndicator({
    super.key,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        bool isActive = index == activeIndex;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 10,
          width: isActive ? 20 : 10,
          decoration: BoxDecoration(
            color: isActive 
                ? kPrimaryColor
                : const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(6),
          ),
        );
      }),
    );
  }
}