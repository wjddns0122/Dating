// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingRoomImpl _$$MeetingRoomImplFromJson(Map<String, dynamic> json) =>
    _$MeetingRoomImpl(
      roomName: json['roomName'] as String?,
      allCount: json['allCount'] as int?,
      roomCategory: json['roomCategory'] as String?,
      ageCategory: json['ageCategory'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$MeetingRoomImplToJson(_$MeetingRoomImpl instance) =>
    <String, dynamic>{
      'roomName': instance.roomName,
      'allCount': instance.allCount,
      'roomCategory': instance.roomCategory,
      'ageCategory': instance.ageCategory,
      'location': instance.location,
    };
