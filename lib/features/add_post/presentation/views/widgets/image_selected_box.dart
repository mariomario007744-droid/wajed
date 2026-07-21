import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/features/add_post/presentation/manager/added_image_cubit/added_image_cubit.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_images.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/image_not_selected_box.dart';

class ImagesSelectedBox extends StatelessWidget {
  ImagesSelectedBox({super.key, required this.images});
  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    return images == null
        ? ImageNotSelectedBox()
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AddedImages(images: images!, count: images!.length),
              SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AddedImageCubit>(context).addMore();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: double.infinity),
                      Icon(Icons.add, size: 24),
                      Text(
                        'Add more',
                        style: Styles.fontSize12.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
