import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/row_toggle_buttons.dart';

class AddPostBody extends StatelessWidget {
  const AddPostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView(children: [RowToggleButtons()]));
  }
}

