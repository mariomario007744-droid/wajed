import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wajed/core/utils/text_style.dart';

class ActionButton extends StatelessWidget {
  const  ActionButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.label,
  });
  final String icon;
  final String label;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: 2),
            Text(
              label,
              style: Styles.fontSize12,
            ),
          ],
        ),
      ),
    );
  }
}
