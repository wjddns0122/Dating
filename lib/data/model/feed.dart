import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  factory Feed(
      {String? name,
      String? residence,
      int? age,
      int? height,
      String? profileImage,
      String? feedImage,
      String? comment,
      String? hashTag,
      int? commentCnt,
      int? likeCnt,
      int? bookmarkCnt,
      String? updateAt}) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
