import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_third_view.dart';
import 'package:wajed/core/widgets/widgets/image_onboarding.dart';
import 'package:wajed/core/widgets/widgets/onboarding_view_body.dart';
import 'package:wajed/core/widgets/widgets/skip_button_onboarding.dart';

class OnboardingSecondView extends StatelessWidget {
  const OnboardingSecondView({super.key});
  static const String routeName = '/onboarding_second_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageOnboarding(image: AssetsData.onboardingSecondPhoto),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SkipButtonOnboarding()),
                Spacer(flex: 1),
                OnboardingViewBody(
                  activeIndex: 1,
                  title: 'Reporting a lost or found item takes just a minute.',
                  subtitle:
                      'Snap a photo, add a short description, and drop a pin on the map. Whether you lost or found an item, it only takes a minute.',
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
    context.push(OnboardingThirdView.routeName);
  }
}





