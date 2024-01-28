import 'package:dating/data/model/auth.dart';
import 'package:dating/data/provider/auth_service.dart';
import 'package:dating/screen/auth/login_screen.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthController extends GetxController {
  final Rx<Auth> user = Auth(email: '', password: '').obs;
  final RxBool isLoading = false.obs;
  final AuthService service;
  final storage = const FlutterSecureStorage();
  late String email;
  late String password;

  AuthController({required this.service});

  void login() {
    final data = {"email": email, "password": password};
    service.login(data);
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
      await storage.delete(key: "token");
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
