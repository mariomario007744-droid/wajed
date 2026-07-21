import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/features/add_post/presentation/manager/added_image_cubit/added_image_cubit.dart';

class ImageNotSelectedBox extends StatelessWidget {
  const ImageNotSelectedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: BlocProvider.of<AddedImageCubit>(context).getImages,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kGreyColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 88.0, horizontal: 8),
          child: Column(
            children: [
              SvgPicture.asset(AssetsData.addImageIcon),
              Text(
                'Text(Upload clear photos here, or browse)',
                style: Styles.fontSize12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
