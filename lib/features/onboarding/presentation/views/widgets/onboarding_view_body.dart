import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/onboarding_view_indicator.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/subtitle_view.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/title_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          const  SizedBox(height: 20),
          const  OnboardingPageIndicator(activeIndex: 0),
          const  SizedBox(height: 16),
          const  TitleView(text: 'Lost something? Found something? We’ll help you.'),
          const  SizedBox(height: 20),
          const  SubtitleView(
            text:
                'Our app makes it simple to report lost items and share found ones so owners and finders can safely connect.',
          ),
          SizedBox(height: 20),
          Padding(padding: const EdgeInsets.all(16.0), child: CustomButton(text: 'Next', onPressed: () {})),
        ],
      ),
    );
  }
}

