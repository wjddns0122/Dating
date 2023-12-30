import 'package:dating/data/model/user.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';

class ProfilePositionedAge extends StatelessWidget {
  final User user;
  const ProfilePositionedAge({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 360,
      left: 20,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: IconShape.iconPerson,
          ),
          Text(
            '${user.age}세',
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            '${user.height}cm',
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
