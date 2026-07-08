import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_first_view.dart';
import 'package:wajed/features/splash_view/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  initState() {
    super.initState();
    navigateToOnboardingFirstView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kbeginSplashView, kendSplashView],
          ),
        ),
        child: Center(
          child: SplashViewBody(),
        ),
      ),
    );
  }



    void navigateToOnboardingFirstView() {
    Future.delayed(const Duration(seconds: 3), () => context.go(OnboardingFirstView.routeName));
  }
}
