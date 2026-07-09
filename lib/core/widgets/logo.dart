import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String logo;
  const Logo({
    super.key,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(logo);
  }
}