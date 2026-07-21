import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_second_view.dart';
import 'package:wajed/core/widgets/widgets/image_onboarding.dart';
import 'package:wajed/core/widgets/widgets/onboarding_view_body.dart';
import 'package:wajed/core/widgets/widgets/skip_button_onboarding.dart';

class OnboardingFirstView extends StatelessWidget {
  const OnboardingFirstView({super.key});
  static const String routeName = '/onboarding_first_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageOnboarding(image: AssetsData.onboardingFirstPhoto),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SkipButtonOnboarding()),
                Spacer(flex: 1),
                OnboardingViewBody(
                  title: 'Lost something? Found something? We’ll help you.',
                  subtitle: 'Our app makes it simple to report lost items and share found ones so owners and finders can safely connect.',
                  activeIndex: 0,
                  buttonText: 'Next',
                  onPressed: () => navigationLogic(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigationLogic(BuildContext context) {
    context.push(OnboardingSecondView.routeName);
  }
}





