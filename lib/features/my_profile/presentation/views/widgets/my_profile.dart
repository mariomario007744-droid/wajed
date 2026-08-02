import 'package:flutter/material.dart';
import 'package:wajed/features/my_posts/presentation/views/widgets/my_profile_header.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_app_bar.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(children: const [
          MyProfileAppBar(),
          MyProfileHeader(imageUrl: 'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png', name: 'Omar sami', email: 'omarsami@gmail.com'),
        ],
      ),
      ),
    );
  }
}

