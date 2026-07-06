import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kbeginSplashView,
            kendSplashView,
          ],
        ),
      ),
    );
  }
}