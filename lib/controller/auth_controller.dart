import 'package:dating/data/model/auth.dart';
import 'package:dating/screen/auth/login_screen.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:dating/utils/api_urls.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final Rx<Auth> user = Auth(email: '', password: '').obs;
  final RxBool isLoading = false.obs;

  late String email;
  late String password;

  Future<void> login() async {
    user.value.email = email;
    user.value.password = password;

    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(ApiUrl.login),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(user.value),
      );

      if (response.statusCode == 200) {
        Get.to(() => const HomeScreen());
      } else {
        Get.snackbar('계정을 로그인 하는데 실패했습니다!', '다시 한번 입력하세요!');
      }
    } finally {
      isLoading(false);
    }
  }

  Future<void> signUp() async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(ApiUrl.login),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(user.value),
      );

      if (response.statusCode == 200) {
        print("Did it");
      } else {
        throw Exception("failed");
      }
    } catch (e) {
      Get.snackbar('회원가입에 실패했습니다', '제대로 입력해주세요!');
    }
  }

  Future<void> logOut() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('userToken');
      user.value = Auth(email: '', password: '');
      Get.offAll(const LoginScreen());
    } catch (e) {
      Get.snackbar('로그아웃에 실패하였습니다!', '잠시후 다시 시도해주세요');
    }
  }

  void changeEmail(String value) {
    email = value;
  }

  void changePassword(String value) {
    password = value;
  }
}
