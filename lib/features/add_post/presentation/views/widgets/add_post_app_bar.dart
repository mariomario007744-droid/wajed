import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/core/widgets/arrow_back_icon.dart';

class AddPostAppBar extends StatelessWidget {
  const AddPostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: const Stack(
        children: [
          Center(child: Text('Add a post',style:Styles.fontSize24)),
          ArrowBackIcon(),
        ],
      ),
    );
  }
}