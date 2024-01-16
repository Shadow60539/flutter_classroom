import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: const BoxDecoration(
        color: Colors.white10,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          "assets/auth/man.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
