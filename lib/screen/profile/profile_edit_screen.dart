import 'package:dating/Widget/bottom_apply_bar.dart';
import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/profile/ideal_type.dart';
import 'package:dating/Widget/profile/interest.dart';
import 'package:dating/Widget/profile/personal_information.dart';
import 'package:dating/Widget/profile/personality.dart';
import 'package:dating/Widget/profile_edit/my_photos.dart';
import 'package:dating/Widget/profile_edit/input_field.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CommonHeader(
        text: '프로필 수정',
        actions: [IconShape.iconSettings],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // my 6 photos
                const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          MyPhotos(),
                          MyPhotos(),
                          MyPhotos(),
                        ],
                      ),
                      Row(
                        children: [
                          MyPhotos(),
                          MyPhotos(),
                          MyPhotos(),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // enter nickname
                const InputField(
                  text1: '닉네임',
                  text2: '압둘라 3세',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                // enter one line introduction
                const InputField(
                  text1: '한줄 소개',
                  text2: '소개 입력',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                // select gender
                const InputField(
                  text1: '성별',
                  text2: '여자',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                // enter address
                const InputField(
                  text1: '주소',
                  text2: '주소 입력',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // enter age
                    Expanded(
                      child: InputField(
                        text1: '나이',
                        text2: '25세',
                        widthPoint: 0.18,
                        heightPoint: 0.05,
                      ),
                    ),

                    // enter height
                    Expanded(
                      child: InputField(
                        text1: '키',
                        text2: '키 입력',
                        widthPoint: 0.18,
                        heightPoint: 0.05,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // division line
                Container(
                  width: width,
                  height: height * 0.002,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                const SizedBox(height: 20),

                // my personal information
                const PersonalInformation(),
                const SizedBox(height: 7),

                // my personality
                const Personality(),
                const SizedBox(height: 7),

                // my ideal type
                const IdealType(),
                const SizedBox(height: 7),

                // my interest
                const Interest(),
                const SizedBox(height: 40),
              ],
            ),

            // add or modification my 6 photos
            Positioned(
              top: 220,
              right: 1,
              child: IconButton(
                icon: IconShape.iconPhotoCamera,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),

      // modification complete
      bottomNavigationBar: BottomApplyBar(
        text: '수정완료',
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}
