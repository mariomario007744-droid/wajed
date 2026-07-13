import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(AssetsData.searchIcon, width: 24, height: 24),
          onPressed: () {},
        ),
        SizedBox(width: 16,),
        IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(
            AssetsData.notificationsIcon,
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
