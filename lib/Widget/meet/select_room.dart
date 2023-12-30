import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class SelectRoom extends StatelessWidget {
  const SelectRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            '대학생',
            style: TextStyle(fontSize: 17, color: font2Color),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            '일반',
            style: TextStyle(fontSize: 17, color: font2Color),
          ),
        ),
      ],
    );
  }
}
