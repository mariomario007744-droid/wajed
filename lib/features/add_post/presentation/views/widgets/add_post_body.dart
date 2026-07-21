import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_cubit.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_state.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_image_section.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/row_toggle_buttons.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/title_section.dart';

class AddPostBody extends StatelessWidget {
  const AddPostBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPostTypeCubit, AddPostTypeState>(
      builder: (context, state) {
        return Expanded(
          child: ListView(
            children: [
              RowToggleButtons(),
              TitleSection(text: 'Photos'),
              AddImageSection(),
            ],
          ),
        );
      },
    );
  }



}
