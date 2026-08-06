import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/lost_post_card/lost_post_card_in_saved_posts.dart';

class SavedPostsViewBody extends StatelessWidget {
  const SavedPostsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: LostPostCardInSavedPosts(),
          );
        },
      ),
    );
  }
}