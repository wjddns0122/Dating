import 'package:flutter/material.dart';

import '../../data/model/user.dart';

class ProfilePositionedName extends StatelessWidget {
  final User user;
  const ProfilePositionedName({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      left: 20,
      child: TextButton(
        onPressed: () {},
        child: Text(
          '${user.name}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
