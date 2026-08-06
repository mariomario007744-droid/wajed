import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_items_app_bar.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/saved_posts_view_body.dart';

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


