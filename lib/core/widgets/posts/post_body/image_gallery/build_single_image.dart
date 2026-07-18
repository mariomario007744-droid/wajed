import 'package:flutter/material.dart';

class BuildSingleImage extends StatelessWidget {
  const BuildSingleImage({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image, fit: BoxFit.cover, width: double.infinity);
  }
}
