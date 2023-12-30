import 'package:dating/data/model/mbti.dart';
import 'package:dating/data/repository/mbti_repository.dart';
import 'package:get/get.dart';

class MbtiController extends GetxController {
  final Rx<List<Mbti>> _mbtis = Rx<List<Mbti>>([]);
  final MbtiRepository mbtiRepository;

  MbtiController({required this.mbtiRepository});

  List<Mbti> get mbtis => _mbtis.value;
  @override
  void onReady() {
    super.onReady();
    _fetchData();
  }

  void _fetchData() {
    mbtiRepository.getListMbtiData().then((_) {
      print(_mbtis.value);
    });
  }
}
