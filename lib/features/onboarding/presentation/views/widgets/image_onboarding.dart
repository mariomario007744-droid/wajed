import 'package:flutter/material.dart';

class ImageOnboarding extends StatelessWidget {
  const ImageOnboarding({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Image.asset(image,fit: BoxFit.cover,),
    );
  }
}