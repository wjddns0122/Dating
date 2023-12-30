import 'package:dating/data/model/user.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';

class ProfilePositionedLocation extends StatelessWidget {
  final User user;
  const ProfilePositionedLocation({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 385,
      left: 20,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: IconShape.iconLocationOn,
          ),
          Text(
            '${user.residence}',
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
