import 'package:dating/Widget/main/circle_avatar.dart';
import 'package:flutter/material.dart';

class InterestedMeBox extends StatelessWidget {
  const InterestedMeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          50,
          (index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Avatar(),
          ),
        ),
      ),
    );
  }
}
