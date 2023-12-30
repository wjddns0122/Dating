import 'package:dating/data/model/mbti.dart';

class MbtiRepository {
  // MbtiFetch service;
  // MbtiRepository ({required this.service});
  // Dio dio = Dio();

  Future<List<Mbti>> getListMbtiData() async {
    final resp = [
      {
        'id': 1,
        'name': '정운',
        'mbti': 'ENFP',
      },
      {
        'id': 2,
        'name': '동욱',
        'mbti': 'ESTP',
      },
    ];
    List<Mbti> mbtis = [];
    for (var data in resp) {
      final mbti = Mbti.fromJson(data);
      mbtis.add(mbti);
    }
    return mbtis;
  }
  // getListMbtiData() => service.getListMbtiData();
}
