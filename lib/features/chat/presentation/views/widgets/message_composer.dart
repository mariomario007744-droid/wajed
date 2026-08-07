import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';
import 'package:wajed/features/chat/presentation/views/widgets/message_input_action.dart';

class MessageComposer extends StatelessWidget {
  const MessageComposer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),

        MessageInputAction(
          icon: Icons.sentiment_satisfied_outlined,
          onTap: () {},
        ),

        const SizedBox(width: 14),

        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Message',
              hintStyle: Styles.fontSize16,
              border: InputBorder.none,
              isCollapsed: true,
            ),
          ),
        ),

        MessageInputAction(icon: Icons.attach_file, onTap: () {}),

        const SizedBox(width: 8),

        MessageInputAction(icon: Icons.mic_none, onTap: () {}),

        const SizedBox(width: 16),
      ],
    );
  }
}
