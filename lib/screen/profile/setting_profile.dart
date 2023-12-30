import 'package:dating/Widget/icon_header.dart';
import 'package:dating/Widget/setting_profile/alarm_setting.dart';
import 'package:dating/Widget/setting_profile/human_account_switch_btn.dart';
import 'package:dating/Widget/setting_profile/logout_btn.dart';
import 'package:dating/Widget/setting_profile/withdrawal_btn.dart';
import 'package:dating/screen/profile/account_information_screen.dart';
import 'package:dating/screen/profile/blocked_account_screen.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '설정'),
      body: Column(
        children: [
          // 이메일 확인/비밀번호 변경
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '계정 확인 및 비밀번호 변경',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const AccountInformationScreen());
                    },
                    icon: IconShape.iconArrowForward),
              ],
            ),
          ),

          // 팝업 알림 설정 on/off
          const AlarmSetting(),

          // 차단된 계정 확인
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '차단된 계정',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const BlockedAccountScreen());
                    },
                    icon: IconShape.iconArrowForward),
              ],
            ),
          ),

          // 휴먼 계정으로 전환하기
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '휴먼계정 전환',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                HumanAccountSwitchBtn(),
              ],
            ),
          ),

          // 로그아웃
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '로그아웃',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                LogoutBtn(),
              ],
            ),
          ),

          // 회원탈퇴
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '회원탈퇴',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                WithdrawalBtn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
