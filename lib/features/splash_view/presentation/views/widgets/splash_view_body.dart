import 'package:flutter/material.dart';
import 'package:wajed/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Center(child: Image.asset(AssetsData.logo))
    );
  }
}