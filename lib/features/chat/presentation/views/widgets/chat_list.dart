import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/features/chat/presentation/manager/message_filter_cubit/message_filter_cubit.dart';
import 'package:wajed/features/chat/presentation/manager/message_filter_cubit/message_filter_state.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chat_list_app_bar.dart';
import 'package:wajed/features/chat/presentation/views/widgets/chat_list_view_body.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageFilterCubit(),
      child: BlocBuilder<MessageFilterCubit, MessageFilterState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
            child: Column(children: [ChatListAppBar(), ChatListViewBody()]),
          );
        },
      ),
    );
  }
}
