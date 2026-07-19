import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wajed/const.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/features/add_post/presentation/views/add_post_view.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AddPostView.routeName);
      },
      child: Container(
        height: 56,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.50, -0.00),
            end: Alignment(0.50, 1.00),
            colors: [Color(0xFF1ABC9C), kPrimaryColor],
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset(AssetsData.addIcon),
        ),
      ),
    );
  }
}
