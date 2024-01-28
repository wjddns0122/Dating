import 'package:dating/screen/information_modify_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class TodayMeet extends StatelessWidget {
  const TodayMeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '오늘의 과팅🔥',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const InformationScreen()),
                ),
              );
            },
            child: const Text(
              '정보 수정',
              style: TextStyle(color: font2Color),
            ),
          ),
        ],
      ),
    );
  }
}
