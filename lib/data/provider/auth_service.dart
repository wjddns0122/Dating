import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final Dio dio;

  AuthService({required this.dio});

  void login(Map<String, dynamic> data) {
    dio.post(ApiUrl.login, data: data).then((resp) {
      if (resp.statusCode == 200) {
        const st = FlutterSecureStorage();
        st.write(key: "token", value: resp.data["accessToken"]);
      }
    });
  }
}
