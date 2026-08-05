import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/assets.dart';

class PopupMenuButtonInSavedPosts extends StatelessWidget {
  const PopupMenuButtonInSavedPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AssetsData.savrPostIcon),
                SizedBox(width: 4),
                Text('Unsave Post'),
              ],
            ),
            onTap: () {},
          ),
        ];
      },
    );
  }
}
