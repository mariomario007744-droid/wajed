import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wajed/core/widgets/toggle_button.dart';
import 'package:wajed/features/chat/presentation/manager/message_filter_cubit/message_filter_cubit.dart';

class RowToggleButtonsChatListView extends StatelessWidget {
  const RowToggleButtonsChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ToggleButton(
              text: 'All',
              onPressed: () => BlocProvider.of<MessageFilterCubit>(
                context,
              ).filterMessages(type: false),
              isSelected: !BlocProvider.of<MessageFilterCubit>(
                context,
              ).unread,
            ),
          ),
          Expanded(
            child: ToggleButton(
              text: 'Unread',
              onPressed: () => BlocProvider.of<MessageFilterCubit>(
                context,
              ).filterMessages(type: true),
              isSelected: BlocProvider.of<MessageFilterCubit>(
                context,
              ).unread,
            ),
          ),
        ],
      ),
    );
  }
}
