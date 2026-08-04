import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';

class MyProfileItemsAppBar extends StatelessWidget {
  const MyProfileItemsAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ArrowBackIcon(),
        Center(
          child: Text(
            title,
            style: Styles.fontSize24,
          ),
        ),
      ],
    );
  }
}