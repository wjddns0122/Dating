import 'package:dating/data/model/mbti.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';

class MbtiFetch {
  final Dio dio;
  MbtiFetch({required this.dio});

  Future<List<Mbti>> getMbtiList() {
    return dio.request(ApiUrl.main).then((resp) {
      if (resp.statusCode == 200) {
        final List<Mbti> mbtis = [];
        for (Map<String, dynamic> data in resp.data) {
          final Mbti mbti = Mbti.fromJson(data);
          mbtis.add(mbti);
        }
        return mbtis;
      } else {
        throw Exception('Failed to send Mbti List');
      }
    });
  }
}
