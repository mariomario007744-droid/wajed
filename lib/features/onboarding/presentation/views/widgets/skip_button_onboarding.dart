import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class SkipButtonOnboarding extends StatelessWidget {
  const SkipButtonOnboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        child: Text(
          'SKIP',
          style: Styles.fontSize16,
          textAlign: TextAlign.right,
        ),
        onTap: () {
          
        },
      ),
    );
  }
}