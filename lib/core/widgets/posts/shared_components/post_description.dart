import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({required this.description});
  
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
            description,
            style: Styles.fontSize14.copyWith(
              fontWeight: FontWeight.w400,
            ),
          );
  }
}