import 'package:dating/data/model/feed.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dio/dio.dart';

class FeedFetch {
  final Dio dio;
  FeedFetch({required this.dio});

  Future<List<Feed>> getFeed() {
    return dio.request(ApiUrl.feed).then((resp) {
      if (resp.statusCode == 200) {
        final List<Feed> feeds = [];
        for (Map<String, dynamic> data in resp.data) {
          final Feed feed = Feed.fromJson(data);
          feeds.add(feed);
        }
        return feeds;
      } else {
        throw Exception('Failed to send Feed');
      }
    });
  }
}
