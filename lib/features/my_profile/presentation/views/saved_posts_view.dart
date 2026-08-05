import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/lost_post_card/lost_post_card_in_saved_posts.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_items_app_bar.dart';

class SavedPostsView extends StatelessWidget {
  const SavedPostsView({super.key});
  static const String routeName = '/saved_posts_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children: [
            MyProfileItemsAppBar(title: 'Saved Posts'),
            SavedPostsViewBody()
          ],
        ),
      )),
    );
  }
}


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