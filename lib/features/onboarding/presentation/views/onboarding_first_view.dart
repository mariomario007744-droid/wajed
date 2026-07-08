import 'package:flutter/material.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/image_onboarding.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/skip_button_onboarding.dart';

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
                OnboardingViewBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





