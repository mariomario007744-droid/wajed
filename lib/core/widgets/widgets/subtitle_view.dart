import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/text_style.dart';

class SubtitleView extends StatelessWidget {
  final String text;
  const SubtitleView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.fontSize14.copyWith(
        color: kGreyColor,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }
}
