import 'package:dating/data/model/feed.dart';

class FeedRepository {
  // RoomFetch service;
  // FeedRepository({required this.service});
  // Dio dio = Dio();

  Future<List<Feed>> getFeedList() async {
    final resp = [
      {
        'name': '정운',
        'residence': '서울시 강북구',
        'age': 20,
        'height': 178,
        'profileImage': 'Image()',
        'feedImage': 'Image()',
        'content': '저 어떤가요?.?',
        'hashTag': '#일상 #여행 #즐거움 #아외롭다.',
        'commentCnt': 3,
        'likeCnt': 10,
        'bookmarkCnt': 7,
        'updateAt': '업데이트 확인'
      },
      {
        'name': '민수',
        'residence': '서울시 강북구',
        'age': 20,
        'height': 178,
        'profileImage': 'Image()',
        'feedImage': 'Image()',
        'content': '저 어떤가요?.?',
        'hashTag': '#일상 #여행 #즐거움 #아외롭다.',
        'commentCnt': 3,
        'likeCnt': 10,
        'bookmarkCnt': 7,
        'updateAt': '업데이트 확인'
      },
      {
        'name': '동욱',
        'residence': '서울시 강북구',
        'age': 20,
        'height': 178,
        'profileImage': 'Image()',
        'feedImage': 'Image()',
        'content': '저 어떤가요?.?',
        'hashTag': '#일상 #여행 #즐거움 #아외롭다.',
        'commentCnt': 3,
        'likeCnt': 10,
        'bookmarkCnt': 7,
        'updateAt': '업데이트 확인'
      },
    ];
    List<Feed> feeds = [];
    for (var data in resp) {
      final feed = Feed.fromJson(data);
      feeds.add(feed);
    }
    return feeds;
  }
}
