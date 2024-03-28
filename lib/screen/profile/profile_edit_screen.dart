import 'dart:io';

import 'package:dating/Widget/icon_header.dart';
import 'package:dating/widget/bottom_apply_bar.dart';
import 'package:dating/widget/common_header.dart';
import 'package:dating/widget/profile/ideal_type.dart';
import 'package:dating/widget/profile/interest.dart';
import 'package:dating/widget/profile/personal_information.dart';
import 'package:dating/widget/profile/personality.dart';
import 'package:dating/widget/profile_edit/input_field.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  XFile? file;

  final List<List<int>> _imageIndex = [
    [0, 1, 2],
    [3, 4, 5],
  ];

  Future<void> _pickImage() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then(
      (image) {
        if (image != null) {
          setState(() {
            file = image;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const IconHeader(
        text: '프로필 수정',
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 내 프로필 사진 업로드(6장 제한)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _imageIndex.length,
                      (index) => Row(
                        children:
                            List.generate(_imageIndex[index].length, (jndex) {
                          return Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  color: Colors.grey,
                                  child: (file != null)
                                      ? Image.file(
                                          File(file!.path),
                                          fit: BoxFit.cover,
                                        )
                                      : IconShape.iconNoImage,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                /// 닉네임 입력
                const InputField(
                  text1: '닉네임',
                  text2: '압둘라 3세',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                /// 한 줄 소개
                const InputField(
                  text1: '한줄 소개',
                  text2: '소개 입력',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                /// 성별 선택
                const InputField(
                  text1: '성별',
                  text2: '여자',
                  widthPoint: 0.68,
                  heightPoint: 0.05,
                ),
                const SizedBox(height: 7),

                /// 사는 곳 입력
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
                    /// 나이 입력
                    Expanded(
                      child: InputField(
                        text1: '나이',
                        text2: '25세',
                        widthPoint: 0.18,
                        heightPoint: 0.05,
                      ),
                    ),

                    /// 키 입력
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

                /// 나누는 선
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
