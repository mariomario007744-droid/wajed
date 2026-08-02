import 'package:flutter/material.dart';
import 'package:wajed/features/my_profile/presentation/views/widgets/my_profile_app_bar.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: ListView(children: const [
          MyProfileAppBar()
        ],
      ),
      ),
    );
  }
}

