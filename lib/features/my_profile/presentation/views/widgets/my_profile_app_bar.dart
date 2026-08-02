import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class MyProfileAppBar extends StatelessWidget {
  const MyProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Profile', style: Styles.fontSize24),
        Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.logout,color: Colors.red,)),
      ],
    );
  }
}
