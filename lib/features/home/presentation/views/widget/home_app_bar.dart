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
          icon: SvgPicture.asset(AssetsData.searchIcon,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface,BlendMode.srcIn), width: 24, height: 24),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(
            AssetsData.notificationsIcon,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface,BlendMode.srcIn)
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
