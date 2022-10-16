import 'package:flutter/material.dart';

class Sign {
  final String id;
  final String title;
  final Color color;
  final IconData icon;
  final String imagePath;

  const Sign({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.icon,
    required this.imagePath,
  });
}
