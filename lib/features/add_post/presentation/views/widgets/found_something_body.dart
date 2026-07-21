import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_image_section.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/title_section.dart';

class FoundSomethingBody extends StatelessWidget {
  const FoundSomethingBody({super.key});

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