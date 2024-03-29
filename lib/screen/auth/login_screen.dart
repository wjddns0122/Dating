import 'package:dating/binding/reset_password_binding.dart';
import 'package:dating/binding/resister_binding.dart';
import 'package:dating/controller/login_controller.dart';
import 'package:dating/screen/auth/auth_forgot_screen.dart';
import 'package:dating/screen/auth/signup_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _title(),
                  const SizedBox(
                    height: 50,
                  ),
                  _body(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: _bottom(),
        ),
      ),
    );
  }

  Widget _title() {
    return Column(
      children: [
        const Text(
          '캠퍼스와 만남,',
          style: TextStyle(
              fontSize: 12,
              color: Color(0xFFBEBEBE),
              fontWeight: FontWeight.bold),
        ),
        Text(
          '캠밋',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: ThemeColor.fontColor),
        ),
      ],
    );
  }

  Widget _body() {
    return Column(
      children: [
        Container(
          width: Get.size.width * 0.8,
          height: Get.size.width * 0.16,
          decoration: BoxDecoration(
              color: const Color(0xFFEDEDED),
              borderRadius: BorderRadius.circular(45),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 8))
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: controller.email,
                cursorColor: ThemeColor.fontColor,
                decoration: const InputDecoration(
                  hintText: '이메일을 입력해주세요.',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: Get.size.width * 0.8,
          height: Get.size.width * 0.16,
          decoration: BoxDecoration(
              color: const Color(0xFFEDEDED),
              borderRadius: BorderRadius.circular(45),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 8))
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                cursorColor: ThemeColor.fontColor,
                controller: controller.password,
                decoration: const InputDecoration(
                  hintText: '비밀번호를 입력해주세요.',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                obscureText: true,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: controller.isLoading.value ? null : controller.login,
          highlightColor: Colors.white,
          borderRadius: BorderRadius.circular(45),
          child: Container(
            width: Get.size.width * 0.8,
            height: Get.size.width * 0.16,
            decoration: BoxDecoration(
                color: const Color(0xFFFF006B),
                borderRadius: BorderRadius.circular(45),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 8))
                ]),
            child: Center(
              child: controller.isLoading.value
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text(
                      '로그인',
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const AuthForgotScreen(),
                  binding: ResetPasswordBinding());
            },
            child: Text(
              '계정을 잃어버리셨나요?',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: ThemeColor.fontColor),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottom() {
    return BottomAppBar(
      shadowColor: Colors.white,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '캠밋이 처음이신가요?',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const SignUpPage(), binding: ResisterBinding());
              },
              child: Text(
                '회원가입',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ThemeColor.fontColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
