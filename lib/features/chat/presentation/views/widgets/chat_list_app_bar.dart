import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/utils/text_style.dart';

class ChatListAppBar extends StatelessWidget {
  const ChatListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Messages',
          style: Styles.fontSize24,
        ),
        Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(
            AssetsData.searchIcon,
            width: 24,
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}