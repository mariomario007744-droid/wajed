import 'package:flutter/material.dart';
import 'package:wajed/const.dart';

class ActiveTabOverlay extends StatelessWidget {
  const ActiveTabOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, -0.00),
          end: Alignment(0.50, 1.00),
          colors: [const Color(0x3F1ABC9C), const Color(0x00F6FEFC)],
        ),
        border: Border(
          top: BorderSide(color: kPrimaryColor, width: 2),
        ),
      ),
    );
  }
}

