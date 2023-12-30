import 'package:dating/data/model/feed.dart';
import 'package:dating/data/repository/feed_repository.dart';
import 'package:get/get.dart';

class FeedController extends GetxController {
  final Rx<List<Feed>> _feeds = Rx<List<Feed>>([]);
  final FeedRepository feedRepository;

  FeedController({required this.feedRepository});

  List<Feed> get feeds => _feeds.value;
  @override
  void onReady() {
    super.onReady();
    _fetchData();
  }

  void _fetchData() {
    feedRepository.getFeedList().then((_) {
      print(_feeds.value);
    });
  }
}
