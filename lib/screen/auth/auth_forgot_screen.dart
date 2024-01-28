import 'package:dating/screen/auth/login_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthForgotScreen extends StatelessWidget {
  const AuthForgotScreen({super.key});

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
              '아이디로 사용 중인 이메일을 입력해주세요',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
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
                    // ),
                    // onChanged: (value) {
                    //   authController.user.update((user) {
                    //     user!.email = value;
                    //   });
                    // },
                  ),
                ),
              ),
            )
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
              Get.to(() => VerifyScreen());
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
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key});

  final controller = TextEditingController();

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '인증번호 6자를 입력해 주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '작성하신 이메일로 인증번호가 전송됐을 거에요',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: VerifyBox(),
              ),
            ]),
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
              Get.to(() => const PasswordChangeScreen());
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
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyBox extends StatelessWidget {
  const VerifyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.13,
      height: MediaQuery.of(context).size.width * 0.18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.grey),
    );
  }
}

class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({super.key});

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
              '변경하실 비밀번호를 입력해주세요',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '마지막 단계에요 :)',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
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
                    hintText: '비밀번호를 입력해주세요',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: font2Color),
                    // ),
                    // onChanged: (value) {
                    //   authController.user.update((user) {
                    //     user!.email = value;
                    //   });
                    // },
                  ),
                ),
              ),
            )
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
              Get.to(() => const LoginScreen());
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
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
