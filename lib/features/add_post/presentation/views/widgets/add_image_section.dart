import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/add_post/presentation/manager/added_image_cubit/added_image_cubit.dart';
import 'package:wajed/features/add_post/presentation/manager/added_image_cubit/added_image_state.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/image_not_selected_box.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/image_selected_box.dart';

class AddImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddedImageCubit(),
      child: BlocBuilder<AddedImageCubit, AddedImageState>(
        builder: (context, state) {
          return state is AddedListImagesState
              ? ImagesSelectedBox(images: state.images )
              : ImageNotSelectedBox();
        },
      ),
    );
  }
}

