import 'package:flutter/material.dart';
import 'package:wajed/features/chat/presentation/views/widgets/row_toggle_buttons_chat_list_view.dart';

class ChatListViewBody extends StatelessWidget {
  const ChatListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        RowToggleButtonsChatListView()
      ]
    );
  }
}