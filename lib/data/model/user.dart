import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    String? name,
    String? comment,
    String? gender,
    String? residence,
    int? age,
    int? height,
    String? image,
    String? personalInfo,
    String? mbti,
    String? personality,
    String? interest,
    String? likePersonality,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
