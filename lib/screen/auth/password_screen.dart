import 'package:dating/controller/auth_controller.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordScreen extends GetView<AuthController> {
  const PasswordScreen({super.key});

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
              '비밀번호를 입력해주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '이제 마지막 단계에요 :)',
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
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '비밀번호를 입력해주세요!',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  onChanged: (value) {
                    controller.user.update((user) {
                      user!.password = value;
                    });
                  },
                  obscureText: true,
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
            onTap: controller.isLoading.value
                ? null
                : () async {
                    await controller.signUp();
                  },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: fontColor),
              child: controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : const Center(
                      child: Text(
                        '회원가입',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
