import 'package:dating/Widget/bottom_apply_bar.dart';
import 'package:dating/Widget/icon_header.dart';
import 'package:dating/screen/meet/meeting_create2_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingCreate1Screen extends StatefulWidget {
  const MeetingCreate1Screen({super.key});

  @override
  State<MeetingCreate1Screen> createState() => _MeetingCreate1ScreenState();
}

class _MeetingCreate1ScreenState extends State<MeetingCreate1Screen> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const IconHeader(text: '방 선택'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // select you want room text
            const Text(
              '원하시는 방을 선택해 주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            const SizedBox(height: 30),

            // select college students or general button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: width * 0.3,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1.0,
                          color:
                              (_selected == 1) ? Colors.blue : Colors.white)),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_selected == 1) {
                          _selected = 0;
                        } else {
                          _selected = 1;
                        }
                      });
                    },
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '🏫',
                            style: TextStyle(fontSize: 50),
                          ),
                          Text(
                            '대학교',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  height: width * 0.3,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          width: 1.0,
                          color:
                              (_selected == 2) ? Colors.blue : Colors.white)),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_selected == 2) {
                          _selected = 0;
                        } else {
                          _selected = 2;
                        }
                      });
                    },
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '🙌',
                            style: TextStyle(fontSize: 50),
                          ),
                          Text(
                            '일반',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // select the room you want, and go to the next screen
      bottomNavigationBar: BottomApplyBar(
        text: '확인',
        onTap: () {
          if (_selected == 0) {
            Get.snackbar("원하시는 방을 선택하셔야 합니다!", "방을 선택해 주세요");
            return;
          }
          Get.to(() => const MeetingCreate2Screen());
        },
      ),
    );
  }
}
