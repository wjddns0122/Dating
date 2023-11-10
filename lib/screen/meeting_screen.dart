import 'package:dating/Widget/meet/meeting_container.dart';
import 'package:dating/screen/meeting_create1.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            '오늘의 과팅❤️‍🔥',
            style: TextStyle(
                fontSize: 20, color: fontColor, fontWeight: FontWeight.bold),
          ),
        ),
        leadingWidth: 200,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: List.generate(
                    50,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: MeetingContainer(),
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                    50,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: MeetingContainer(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const MeetingCreate1());
        },
        backgroundColor: fontColor,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
