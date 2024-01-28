import 'package:dating/controller/auth_controller.dart';
import 'package:dating/screen/auth/password_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<AuthController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: fontColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '이메일을 입력해주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '이메일 작성 후 인증번호가 전송됩니다',
              style: TextStyle(
                  fontSize: 13, color: font2Color, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: const Color(0xFFEDEDED),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'hello@comment.com',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: font2Color),
                  ),
                  onChanged: (value) {
                    controller.user.update((user) {
                      user!.email = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BottomAppBar(
          shadowColor: Colors.white,
          elevation: 0,
          child: GestureDetector(
            onTap: () {
              Get.to(() => const PasswordScreen());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: fontColor),
              child: const Center(
                child: Text(
                  '확인',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
