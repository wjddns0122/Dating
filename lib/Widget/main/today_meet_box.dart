import 'package:dating/Widget/main/gesture_box.dart';
import 'package:flutter/material.dart';

class TodayMeetBox extends StatelessWidget {
  const TodayMeetBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          50,
          (index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GestureBox(),
          ),
        ),
      ),
    );
  }
}
