import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({required this.size, super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      child: Image.asset(
        'assets/temp/dummy_profile.jpeg',
        width: size,
        height: size,
      ),
    );
  }
}
