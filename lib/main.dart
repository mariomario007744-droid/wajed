import 'package:flutter/material.dart';
import 'package:wajed/core/utils/app_routing.dart';

void main() {
  runApp(const Wajed());
}

class Wajed extends StatelessWidget {
  const Wajed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Open Sans',
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
