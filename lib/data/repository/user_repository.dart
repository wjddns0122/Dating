import 'package:dating/data/model/user.dart';
import 'package:dating/data/provider/user_fetch.dart';

class UserRepository {
  UserFetch service;
  UserRepository({required this.service});

  Future<List<User>> getUserData() => service.fetchUserData();

  Future<User> searchMyInfo() => service.searchMyInfo();
}
