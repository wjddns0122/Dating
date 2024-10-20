import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/home_repository.dart';

class HomeService {
  final HomeRepository homeRepository;

  HomeService({
    required this.homeRepository,
  });

  Future<List<List<User>>> getHomeDatas() async {
    final response = await homeRepository.getHomeDatas();
    List randomMemberList = response["randomMemberList"];
    List sendHeartList = response["favoriteMemberList"];
    List receiverHeartList = response["fanMemberList"];
    return [
      randomMemberList.map((json) => User.fromJson(json)).toList(),
      sendHeartList.map((json) => User.fromJson(json)).toList(),
      receiverHeartList.map((json) => User.fromJson(json)).toList()
    ];
  }

  Future<List<User>> newFavoriteMembers(int id) {
    return homeRepository
        .newFavoriteMembers(id)
        .then((users) => users.map((json) => User.fromJson(json)).toList());
  }
}
