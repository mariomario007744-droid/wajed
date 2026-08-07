import 'package:flutter/material.dart';
import 'package:wajed/features/chat/presentation/views/widgets/message_input.dart';

class ChattingViewBody extends StatelessWidget {
  const ChattingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const  Spacer(),
          MessageInput()
        ],
      ),
    );
  }
}