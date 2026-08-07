import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.send_rounded,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}
