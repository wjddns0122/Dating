import 'package:dating/Widget/bottom_apply_bar.dart';
import 'package:dating/Widget/icon_header.dart';
import 'package:dating/Widget/meet_create1/select_meet_method.dart';
import 'package:dating/binding/upload_binding.dart';
import 'package:dating/screen/meet/meeting_create2_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingCreate1Screen extends StatelessWidget {
  const MeetingCreate1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '방 선택'),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // select you want room text
            Text(
              '원하시는 방을 선택해 주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            SizedBox(height: 30),

            // select college students or general button
            SelectMeetMethod(),
          ],
        ),
      ),
      // select the room you want, and go to the next screen
      bottomNavigationBar: BottomApplyBar(
        text: '확인',
        onTap: () {
          Get.to(const MeetingCreate2Screen());
        },
      ),
    );
  }
}
