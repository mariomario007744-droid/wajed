import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class TitleView extends StatelessWidget {
  final String text;
  const TitleView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.fontSize24,
    );
  }
}