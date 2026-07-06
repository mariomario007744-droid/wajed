import 'package:flutter/material.dart';
import 'package:wajed/features/splash_view/presentation/views/splash_view.dart';

void main() {
  runApp(const Wajed());
}

class Wajed extends StatelessWidget {
  const Wajed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
