import 'package:dating/data/model/user.dart';

class UserRepository {
  // UserFetch service;
  // UserRepository({required this.service});
  // Dio dio = Dio();

  Future<List<User>> getUserData() async {
    // var resp = await dio.get("service-path-url");
    await Future.delayed(const Duration(seconds: 2));
    final resp = [
      {
        'name': '정운',
        'comment': '안녕하세요',
        'gender': '남성',
        'residence': '서울시 강북구',
        'age': 20,
        'height': 178,
        'personalInfo': '코딩을 좋아하는 20살입니다.',
        'mbti': 'ENFP',
        'personality': '활발한',
        'interest': '게임',
        'likePersonality': '재밌는'
      },
      {
        'name': '민수',
        'comment': '안녕하세요',
        'gender': '남성',
        'residence': '서울시 동대문구',
        'age': 20,
        'height': 183,
        'personalInfo': '코딩을 좋아하는 20살입니다.',
        'mbti': 'ENFP',
        'personality': '활발한',
        'interest': '게임',
        'likePersonality': '재밌는'
      },
      {
        'name': '정운',
        'comment': '안녕하세요',
        'gender': '남성',
        'residence': '서울시 강북구',
        'age': 20,
        'height': 178,
        'personalInfo': '코딩을 좋아하는 20살입니다.',
        'mbti': 'ENFP',
        'personality': '활발한',
        'interest': '게임',
        'likePersonality': '재밌는'
      },
    ];
    List<User> users = [];
    for (var data in resp) {
      final user = User.fromJson(data);
      users.add(user);
    }
    return users;
  }

  // getUserData() => service.getUserData();
}
