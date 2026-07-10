import 'package:flutter/material.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}