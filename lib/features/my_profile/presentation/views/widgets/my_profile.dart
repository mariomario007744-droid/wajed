import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'MyProfile',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
  }
}