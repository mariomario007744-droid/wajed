import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Chat List',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
  }
}