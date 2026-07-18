import 'package:flutter/material.dart';
import 'package:wajed/features/my_posts/presentation/views/widgets/lost_post_card/lost_post_card_in_my_posts.dart';
import 'package:wajed/features/my_posts/presentation/views/widgets/my_posts_app_bar.dart';

class MyPostsList extends StatelessWidget {
  const MyPostsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Align(
              alignment: AlignmentGeometry.topLeft,
              child: MyPostsAppBar(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return LostPostCardInMyPosts();
              },
            ),
          ),
        ],
      ),
    );
  }
}
