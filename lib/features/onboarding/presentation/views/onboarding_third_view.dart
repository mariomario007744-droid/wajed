import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/image_onboarding.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:wajed/features/onboarding/presentation/views/widgets/skip_button_onboarding.dart';

class OnboardingThirdView extends StatelessWidget {
  const OnboardingThirdView({super.key});
  static const String routeName = '/onboarding_third_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageOnboarding(image: AssetsData.onboardingThirdPhoto),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SkipButtonOnboarding()),
                Spacer(flex: 1),
                OnboardingViewBody(
                  activeIndex: 2,
                  title: 'Communicate securely within the app.',
                  subtitle:
                      'All conversations stay safe within the app, so you can connect with people within the app whether you find or lose something.',
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
    context.push(GetStartedView.routeName);
  }
}





