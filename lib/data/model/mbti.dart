import 'package:freezed_annotation/freezed_annotation.dart';

part 'mbti.freezed.dart';
part 'mbti.g.dart';

@freezed
class Mbti with _$Mbti {
  factory Mbti({required int id, required String name, required String mbti}) =
      _Mbti;

  factory Mbti.fromJson(Map<String, dynamic> json) => _$MbtiFromJson(json);
}
