import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({super.key, required this.length, required this.item,});
  final int length;
  final List item;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return List.generate(length,(index)=> item[index]);
      },
    );
  }
}

