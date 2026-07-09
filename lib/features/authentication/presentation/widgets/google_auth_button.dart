import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Brand(Brands.google));
  }
}