import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class MyPostsAppBar extends StatelessWidget {
  const MyPostsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('My posts',style: Styles.fontSize24);
  }
}
