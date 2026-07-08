import 'package:flutter/material.dart';

class OnboardingFirstView extends StatelessWidget {
  const OnboardingFirstView({super.key});
  static const String routeName = '/onboarding_first_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Onboarding First View'),
      ),
    );
  }
}