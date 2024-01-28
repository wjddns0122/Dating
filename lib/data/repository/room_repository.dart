import 'package:dating/data/model/meeting_room.dart';

class RoomRepository {
  // RoomFetch service;
  // RoomRepository({required this.service});
  // Dio dio = Dio();

  Future<List<MeetingRoom>> getMeetingRoomData() async {
    // var resp = await dio.get("service-path-url");
    final resp = [
      {
        'roomName': '이태원에서 술마실 사람!',
        'allCount': 3,
        'roomCategory': '성별 무관',
        'ageCategory': '20대',
        'location': '이태원'
      },
      {
        'roomName': '수유에서 술마실 사람!',
        'allCount': 2,
        'roomCategory': '여성만',
        'ageCategory': '30대',
        'location': '수유'
      },
      {
        'roomName': '잠실에서 술마실 사람!',
        'allCount': 4,
        'roomCategory': '성별 무관',
        'ageCategory': '20대',
        'location': '잠실'
      },
    ];
    List<MeetingRoom> meetingRooms = [];
    for (var data in resp) {
      final meetingRoom = MeetingRoom.fromJson(data);
      meetingRooms.add(meetingRoom);
    }
    return meetingRooms;
  }

  // getMeetingRoomData() => service.getMeetingRoomData();
}
