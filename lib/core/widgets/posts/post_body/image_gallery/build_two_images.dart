import 'package:flutter/material.dart';

class BuildTwoImages extends StatelessWidget {
  const BuildTwoImages({required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            images[0],
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          child: Image.asset(
            images[1],
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
