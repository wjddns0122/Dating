import 'package:dating/style/icon_shape.dart';
import 'package:dating/widget/bottom_apply_bar.dart';
import 'package:dating/widget/icon_header.dart';
import 'package:dating/widget/meet_create2/room_photo_upload.dart';

import 'package:dating/screen/home_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingCreate2Screen extends StatefulWidget {
  const MeetingCreate2Screen({super.key});

  @override
  State<MeetingCreate2Screen> createState() => _MeetingCreate2ScreenState();
}

class _MeetingCreate2ScreenState extends State<MeetingCreate2Screen> {
  int _count = 0;

  void increase() => setState(() {
        if (_count == 5) return;
        _count++;
      });

  void decrease() => setState(() {
        if (_count == 0) return;
        _count--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '방 설정'),
      body: _body(),

      // 설정 후 확인 버튼
      bottomNavigationBar: BottomApplyBar(
        text: '확인',
        onTap: () {
          Get.to(() => const HomeScreen());
        },
      ),
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 미팅 방 사진 업로드
            const Text(
              '과팅방 사진',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const RoomPhotoUpload(),
            const SizedBox(height: 20),

            // 미팅 방 제목
            const Text(
              '방 제목',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLength: 15,
              style: const TextStyle(
                decorationThickness: 0,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                counterText: '',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ThemeColor.inputColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: '제목은 최대 15자로 제한',
              ),
            ),
            const SizedBox(height: 20),

            // 미팅 방 설명
            const Text(
              '방 설명',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextFormField(
              maxLength: 50,
              maxLines: 5,
              style: const TextStyle(
                decorationThickness: 0,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                counterText: '',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ThemeColor.inputColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: '방 설명은 최대 50자로 제한',
              ),
            ),
            const SizedBox(height: 20),

            // 지역 입력
            const Row(
              children: [
                Text(
                  '지역 입력',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    maxLength: 3,
                    decoration: InputDecoration(
                      counterText: '',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '시',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    maxLength: 3,
                    decoration: InputDecoration(
                      counterText: '',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '구',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 남/여 인원 설정
            const Text(
              '남/여 인원 설정',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconShape.iconMale,
                    const SizedBox(width: 10),
                    Container(
                      width: Get.size.width * 0.3,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ThemeColor.inputColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: decrease,
                            icon: const Icon(
                              Icons.remove,
                            ),
                          ),
                          Text(
                            '$_count',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: increase,
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconShape.iconFemale,
                    const SizedBox(width: 10),
                    Container(
                      width: Get.size.width * 0.3,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ThemeColor.inputColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: decrease,
                            icon: const Icon(Icons.remove),
                          ),
                          Text(
                            '$_count',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: increase,
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
