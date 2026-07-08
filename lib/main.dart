import 'package:flutter/material.dart';
import 'package:wajed/core/utils/app_routing.dart';

void main() {
  runApp(const Wajed());
}

class Wajed extends StatefulWidget {
  const Wajed({super.key});

  @override
  State<Wajed> createState() => _WajedState();
}

class _WajedState extends State<Wajed> {
  initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
