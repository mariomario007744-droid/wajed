import 'package:flutter/material.dart';
import 'package:wajed/features/add_post/presentation/views/widgets/add_location_view_body_in_add_post.dart';
class AddLocationViewInAddPost extends StatelessWidget {
  const AddLocationViewInAddPost({super.key});
  static const String routeName = '/add_location_view_in_add_post';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset("assets/images/Location confirmation.png")),
            AddLocationViewBodyInAddPost(),
          ],
        ),
      ),
    );
  }
}

