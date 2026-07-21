import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/core/widgets/custom_button.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_cubit.dart';
import 'package:wajed/features/add_post/presentation/manager/add_post_type_cubit/add_post_type_state.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/found_something_body.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/lost_something_body.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/row_toggle_buttons.dart';

class AddPostBody extends StatelessWidget {
  const AddPostBody();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPostTypeCubit, AddPostTypeState>(
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: [
              RowToggleButtons(),
              BlocProvider.of<AddPostTypeCubit>(context).lostTypeSelected
                  ? LostSomethingBody()
                  : FoundSomethingBody(),
                  CustomButton(text: 'publish', onPressed: (){})
            ],
          ),
        );
      },
    );
  }
}