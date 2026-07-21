import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_image_gallery/added_four_images.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_image_gallery/added_more_than_four_images.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_image_gallery/added_single_image.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_image_gallery/added_three_images.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/added_image_gallery/added_two_images.dart';

class AddedImages extends StatelessWidget {
  const AddedImages({Key? key, required this.images, required this.count});
   final List<String> images;
  final int count;
  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox.shrink();
    return Container(
      height: 200,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: buildLayoutByCount(count),
    );
  }

  Widget buildLayoutByCount(int count) {
    switch (count) {
      case 1:
        return AddedSingleImage(image: images[0]);
      case 2:
        return AddedTwoImages(images: images);
      case 3:
        return AddedThreeImages(images: images);
      case 4:
        return AddedFourImages(images: images);
      default:
        return AddedMoreThanFourImages(
          images: images,
          remainingCount: images.length - 4,
        );
    }
  }
}
