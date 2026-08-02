import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class MyProfileHeader extends StatelessWidget {
  const MyProfileHeader({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.email,
  });

  final String imageUrl;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            name,
            style: Styles.fontSize18,
          ),
          Text(
            email,
            style: Styles.fontSize12,
          ),
        ],
      ),
    );
  }
}
