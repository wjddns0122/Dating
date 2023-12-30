import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/utils/api_urls.dart';

import 'package:dio/dio.dart';

class RoomFetch {
  final Dio dio;
  RoomFetch({required this.dio});

  Future<List<MeetingRoom>> getMeetingRoom() {
    return dio.request(ApiUrl.meetingRoom).then((resp) {
      if (resp.statusCode == 200) {
        final List<MeetingRoom> rooms = [];
        for (Map<String, dynamic> data in resp.data) {
          final MeetingRoom room = MeetingRoom.fromJson(data);
          rooms.add(room);
        }
        return rooms;
      } else {
        throw Exception("Failed to getMeetingRoom,,");
      }
    });
  }
}
