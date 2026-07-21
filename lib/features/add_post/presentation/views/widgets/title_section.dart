import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Styles.fontSize16,);
  }
}