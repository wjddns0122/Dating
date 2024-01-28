import 'package:dating/data/model/like.dart';

class LikeRepository {
  // RoomFetch service;
  // LikeRepository({required this.service});
  // Dio dio = Dio();

  Future<List<Like>> getLikeList() async {
    final resp = [
      {'name': '희원', 'age': 20},
      {'name': '길동', 'age': 45},
      {'name': '희원', 'age': 20},
      {'name': '길동', 'age': 45},
    ];
    List<Like> likes = [];
    for (var data in resp) {
      final like = Like.fromJson(data);
      likes.add(like);
    }
    return likes;
  }

  // getLikeList() => service.getLikeList();
}
