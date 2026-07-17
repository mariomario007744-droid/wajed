import 'package:flutter/material.dart';

class NavigationBarModel {
  final String icon;
  final String label;
  final int badgeCount;
  final Widget body;

  NavigationBarModel({
    required this.icon,
    required this.label,
    required this.body,
    this.badgeCount = 0,
  });
}
