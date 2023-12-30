import 'package:dating/controller/auth_controller.dart';
import 'package:dating/screen/auth/auth_forgot_screen.dart';
import 'package:dating/screen/auth/signup_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '캠퍼스와 만남,',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFBEBEBE),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '캠밋',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: fontColor),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.16,
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
                        decoration: const InputDecoration(
                          hintText: '이메일을 입력해주세요.',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        onChanged: controller.changeEmail),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.16,
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
                      decoration: const InputDecoration(
                        hintText: '비밀번호를 입력해주세요.',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      onChanged: controller.changePassword,
                      obscureText: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() {
                return GestureDetector(
                  onTap: Get.find<AuthController>().isLoading.value
                      ? null
                      : Get.find<AuthController>().login,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.16,
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
                      child: Get.find<AuthController>().isLoading.value
                          ? const CircularProgressIndicator()
                          : const Text(
                              '로그인',
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                );
              }),
              TextButton(
                onPressed: () {
                  Get.to(const AuthForgotScreen());
                },
                child: const Text(
                  '계정을 잃어버리셨나요?',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: fontColor),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
              child: TextButton(
                onPressed: () {
                  Get.to(SignUpPage());
                },
                child: const Text(
                  '회원가입',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: fontColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
