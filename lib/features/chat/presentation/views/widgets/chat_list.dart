import 'package:flutter/material.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chat_list_app_bar.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: Column(children: [ChatListAppBar()]),
          );
  }
}



