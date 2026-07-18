import 'package:flutter/material.dart';

class BuildFourImages extends StatelessWidget {
  const BuildFourImages({required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
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
          ),
        ),
        const SizedBox(height: 2),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  images[2],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
              const SizedBox(width: 2),
              Expanded(
                child: Image.asset(
                  images[3],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}