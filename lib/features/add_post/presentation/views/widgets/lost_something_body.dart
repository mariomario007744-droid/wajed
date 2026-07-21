import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_image_section.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/title_section.dart';

class LostSomethingBody extends StatelessWidget {
  const LostSomethingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          TitleSection(text: 'Photos'),
          AddImageSection(),
        ],
      ),
    );
  }
}