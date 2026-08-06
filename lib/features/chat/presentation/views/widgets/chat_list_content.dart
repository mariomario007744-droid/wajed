import 'package:flutter/material.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chat_list_tile.dart';

class ChatListContent extends StatelessWidget {
  const ChatListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ChatListTile(
            avatarUrl:
                'assets/images/6140fad6d9bdd7f9a2e23fb608060567b7c77a06.png',
            name: 'John Doe',
            lastMessage: 'Hello, how are you?',
            time: '12:30 PM',
            unreadCount: 2,
            onTap: () {},
          );
        },
      ),
    );
  }
}