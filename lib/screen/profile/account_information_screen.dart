import 'package:dating/Widget/icon_header.dart';
import 'package:dating/screen/profile/change_password.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '이메일 확인 및 비밀번호 변경'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text('연동된 이메일'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('abcdfg@gmail.com'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '비밀번호 변경',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const ChangePassword());
                    },
                    icon: IconShape.iconArrowForward),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
