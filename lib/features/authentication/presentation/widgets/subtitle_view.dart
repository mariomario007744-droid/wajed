import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class SubtitleView extends StatelessWidget {
  final String text;
  const SubtitleView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.fontSize16.copyWith(
        color: const Color(0xFF7C7C7C),
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }
}