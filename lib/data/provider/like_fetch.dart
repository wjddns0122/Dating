import 'package:dating/data/model/like.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';

class LikeFetch {
  final Dio dio;
  LikeFetch({required this.dio});

  Future<List<Like>> getLike() {
    return dio.request(ApiUrl.main).then((resp) {
      if (resp.statusCode == 200) {
        final List<Like> likes = [];
        for (Map<String, dynamic> data in resp.data) {
          final Like like = Like.fromJson(data);
          likes.add(like);
        }
        return likes;
      } else {
        throw Exception('like send failed..');
      }
    });
  }
}
