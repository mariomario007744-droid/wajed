import 'package:flutter/material.dart';

class MyPostsList extends StatelessWidget {
  const MyPostsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'MyPostsList',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
  }
}