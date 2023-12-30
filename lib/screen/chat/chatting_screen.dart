import 'package:dating/Widget/chat/chatting_box.dart';
import 'package:dating/Widget/chat/chatting_container.dart';
import 'package:dating/Widget/common_header.dart';
import 'package:dating/screen/chat/chatting_in_screen.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonHeader(
        text: '채팅',
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: IconShape.iconMore,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ChattingContainer(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                50,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    child: const ChattingBox(),
                    onTap: () {
                      Get.to(const ChattingInScreen());
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
