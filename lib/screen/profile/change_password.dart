import 'package:dating/Widget/bottom_apply_bar.dart';
import 'package:dating/Widget/icon_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isTextVisible = false;

  void toggleTextVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '비밀번호 변경'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 현재 비밀번호 입력
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text('현재 비밀번호 입력'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              maxLength: 15,
              style: const TextStyle(decorationThickness: 0, fontSize: 15),
              obscureText: !_isTextVisible,
              decoration: InputDecoration(
                counterText: '',
                hintText: '비밀번호 최대 15자 제한',
                suffixIcon: IconButton(
                  onPressed: toggleTextVisibility,
                  icon: Icon(
                      _isTextVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // 변경할 비밀번호 입력
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text('변경할 비밀번호 입력'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              maxLength: 15,
              style: const TextStyle(decorationThickness: 0, fontSize: 15),
              obscureText: !_isTextVisible,
              decoration: InputDecoration(
                counterText: '',
                hintText: '비밀번호 최대 15자 제한',
                suffixIcon: IconButton(
                  onPressed: toggleTextVisibility,
                  icon: Icon(
                      _isTextVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // 변경된 비밀번호 확인
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text('변경된 비밀번호 확인'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              maxLength: 15,
              style: const TextStyle(decorationThickness: 0, fontSize: 15),
              obscureText: !_isTextVisible,
              decoration: InputDecoration(
                counterText: '',
                hintText: '비밀번호 최대 15자 제한',
                suffixIcon: IconButton(
                  onPressed: toggleTextVisibility,
                  icon: Icon(
                      _isTextVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: BottomApplyBar(
        text: '확인',
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}
