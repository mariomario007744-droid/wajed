import 'dart:io';

import 'package:flutter/material.dart';

class AddedTwoImages extends StatelessWidget {
  const AddedTwoImages({required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.file(
            File(images[0]),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          child: Image.file(
            File(images[1]),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
