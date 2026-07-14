import 'package:flutter/material.dart';

class BuildThreeImages extends StatelessWidget {
  const BuildThreeImages({required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            images[0],
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  images[1],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 2),
              Expanded(
                child: Image.asset(
                  images[2],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}