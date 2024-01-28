import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatInAppBar extends StatelessWidget {
  const ChatInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: IconShape.iconArrowBackIos,
              ),
            ),
            const Text(
              '홍길동',
              style: TextStyle(
                  color: fontColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      leadingWidth: 400,
      elevation: 0,
    );
  }
}
