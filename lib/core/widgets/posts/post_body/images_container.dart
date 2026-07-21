import 'package:flutter/material.dart';
import 'package:wajed/core/widgets/posts/post_body/image_gallery/build_four_images.dart';
import 'package:wajed/core/widgets/posts/post_body/image_gallery/build_more_than_four_images.dart';
import 'package:wajed/core/widgets/posts/post_body/image_gallery/build_single_image.dart';
import 'package:wajed/core/widgets/posts/post_body/image_gallery/build_three_images.dart';
import 'package:wajed/core/widgets/posts/post_body/image_gallery/build_two_images.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({Key? key, required this.images, required this.count});
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
        return BuildSingleImage(image: images[0]);
      case 2:
        return BuildTwoImages(images: images);
      case 3:
        return BuildThreeImages(images: images);
      case 4:
        return BuildFourImages(images: images);
      default:
        // لو 5 أو أكثر
        return BuildMoreThanFourImages(
          images: images,
          remainingCount: images.length - 4,
        );
    }
  }
}
