import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_room.freezed.dart';
part 'meeting_room.g.dart';

@freezed
class MeetingRoom with _$MeetingRoom {
  factory MeetingRoom(
      {String? roomName,
      int? allCount,
      String? roomCategory,
      String? ageCategory,
      String? location}) = _MeetingRoom;

  factory MeetingRoom.fromJson(Map<String, dynamic> json) =>
      _$MeetingRoomFromJson(json);
}
