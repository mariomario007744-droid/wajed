import 'package:flutter/material.dart';
import 'package:wajed/const.dart';
import 'package:wajed/features/chat/presentation/views/widgets/message_composer.dart';
import 'package:wajed/features/chat/presentation/views/widgets/send_button.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: kGreyColor.withValues(alpha: 0.5),
                  width: 1.5,
                ),
              ),
              child: MessageComposer(),
            ),
          ),

          const SizedBox(width: 12),

          SendButton(),
        ],
      ),
    );
  }
}

