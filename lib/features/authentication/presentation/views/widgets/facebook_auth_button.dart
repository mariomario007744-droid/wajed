import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FacebookAuthButton extends StatelessWidget {
  const FacebookAuthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Brand(Brands.facebook));
  }
}