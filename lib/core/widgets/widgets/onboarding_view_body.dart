import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/core/widgets/widgets/onboarding_view_indicator.dart';
import 'package:wajed/core/widgets/widgets/subtitle_view.dart';
import 'package:wajed/core/widgets/widgets/title_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({required this.activeIndex, required this.title, required this.subtitle, required this.buttonText, required this.onPressed});
  final int activeIndex;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          const  SizedBox(height: 20),
          OnboardingPageIndicator(activeIndex: activeIndex),
          const  SizedBox(height: 16),
          TitleView(text: title),
          const  SizedBox(height: 20),
          SubtitleView(
            text:
              subtitle  ,
          ),
          SizedBox(height: 20),
          Padding(padding: const EdgeInsets.all(16.0), child: CustomButton(text: buttonText, onPressed: onPressed)),
        ],
      ),
    );
  }
}

