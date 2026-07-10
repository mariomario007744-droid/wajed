import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class CustomFieldLabelText extends StatelessWidget {
  const CustomFieldLabelText({
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.fontSize16.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
