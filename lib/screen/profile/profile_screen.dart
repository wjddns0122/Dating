import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/profile_edit/my_photos.dart';
import 'package:dating/Widget/profile/personal_information.dart';
import 'package:dating/Widget/profile/personality.dart';
import 'package:dating/Widget/profile/interest.dart';
import 'package:dating/Widget/profile/ideal_type.dart';
import 'package:dating/Widget/profile/profile_positioned_age.dart';
import 'package:dating/Widget/profile/profile_edit_button.dart';
import 'package:dating/Widget/profile/profile_positioned_location.dart';
import 'package:dating/Widget/profile/profile_positioned_name.dart';
import 'package:dating/Widget/profile/profile_picture.dart';
import 'package:dating/controller/user_controller.dart';
import 'package:dating/screen/profile/setting_profile.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:dating/style/text_styling.dart';
import 'package:dating/utils/status_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<UserController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonHeader(
        text: '프로필',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Get.to(() => const SettingProfile());
              },
              icon: IconShape.iconSettings,
            ),
          ),
        ],
      ),
      body: Obx(() => (controller.status == Status.LOADING)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildBody()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // 내 프로필 사진
                  const ProfilePicture(),

                  // 내 이름
                  ProfilePositionedName(user: controller.myInfo!),

                  // 내 나이
                  ProfilePositionedAge(
                    user: controller.myInfo!,
                  ),

                  // 내 위치
                  ProfilePositionedLocation(
                    user: controller.myInfo!,
                  ),

                  // 프로필 편집 버튼
                  const Positioned(
                    top: 360,
                    right: 20,
                    child: ProfileEditButton(),
                  ),
                ],
              ),
            ],
          ),
          // 내 정보
          const PersonalInformation(),

          // 나의 성격
          const Personality(),

          // 나의 관심사
          const Interest(),

          // 나의 이상형
          const IdealType(),
          const SizedBox(height: 50),

          // 내 스토리
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextStyling.story,
          ),

          // 내 스토리 사진
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              children: [
                MyPhotos(),
                MyPhotos(),
                MyPhotos(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
