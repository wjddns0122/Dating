import 'package:dating/data/model/user.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as storage;

class UserFetch {
  final Dio dio;
  UserFetch({required this.dio});

  Future<List<User>> fetchUserData() async {
    const st = storage.FlutterSecureStorage();
    final token = await st.read(key: "token");
    print(token);
    return dio
        .get(ApiUrl.main,
            options: Options(headers: {"Authorization": "Bearer $token"}))
        .then((resp) {
      if (resp.statusCode == 200) {
        final List<User> users = [];
        for (var data in resp.data) {
          final User user = User.fromJson(data);
          users.add(user);
        }
        return users;
      } else {
        throw Exception("Failed to send User data..");
      }
    });
  }

  Future<User> searchMyInfo() async {
    const st = storage.FlutterSecureStorage();
    final token = await st.read(key: "token");
    print(token);
    return dio
        .get(ApiUrl.profile,
            options: Options(headers: {"Authorization": "Bearer $token"}))
        .then((resp) {
      if (resp.statusCode == 200) {
        return User.fromJson(resp.data);
      } else {
        throw Exception("Failed to send User data..");
      }
    });
  }
}
