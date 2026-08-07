import 'package:flutter/material.dart';

class MessageInputAction extends StatelessWidget {
  const MessageInputAction({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(48),
      onTap: onTap,
      child: Icon(icon, size: 24, color: Colors.grey.shade600),
    );
  }
}
