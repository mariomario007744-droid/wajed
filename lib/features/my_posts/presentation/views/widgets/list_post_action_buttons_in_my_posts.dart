import 'package:flutter/material.dart';
import 'package:wajed/core/utils/assets.dart';
import 'package:wajed/core/widgets/posts/action_button.dart';

class ListPostActionButtonsInMyPosts extends StatelessWidget {
  const ListPostActionButtonsInMyPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ActionButton(
            icon: AssetsData.likeIcon,
            label: 'Like',
            onTap: () {},
          ),
        ),
        Expanded(
          child: ActionButton(
            icon: AssetsData.commentIcon,
            label: 'Comment',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
