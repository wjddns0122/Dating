import 'package:dating/data/model/user.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';

class UserFetch {
  final Dio dio;
  UserFetch({required this.dio});

  Future<List<User>> fetchProfile() {
    return dio.request(ApiUrl.profile).then((resp) {
      if (resp.statusCode == 200) {
        final List<User> users = [];
        for (Map<String, dynamic> data in resp.data) {
          final User user = User.fromJson(data);
          users.add(user);
        }
        return users;
      } else {
        throw Exception("Failed to send User data..");
      }
    });
  }
}
