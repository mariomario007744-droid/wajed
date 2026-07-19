import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_cubit.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/toggle_button.dart';

class RowToggleButtons extends StatelessWidget {
  const RowToggleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ToggleButton(
              text: 'I lost something',
              onPressed: () => BlocProvider.of<AddPostTypeCubit>(context).toggleAddPostType(type: true),
              isSelected: BlocProvider.of<AddPostTypeCubit>(context).lostTypeSelected,
            ),
          ),
          Expanded(
            child: ToggleButton(
              text: 'I found something',
              onPressed: () => BlocProvider.of<AddPostTypeCubit>(context).toggleAddPostType(type: false),
              isSelected: !BlocProvider.of<AddPostTypeCubit>(context).lostTypeSelected,
            ),
          ),
        ],
      ),
    );
  }
}
