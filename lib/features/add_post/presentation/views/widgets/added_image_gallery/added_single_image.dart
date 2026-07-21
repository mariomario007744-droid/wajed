import 'dart:io';

import 'package:flutter/material.dart';

class AddedSingleImage extends StatelessWidget {
  const AddedSingleImage({required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.file(File(image), fit: BoxFit.cover, width: double.infinity);
  }
}
