import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/data/repository/room_repository.dart';
import 'package:get/get.dart';

class MeetingController extends GetxController {
  final Rx<List<MeetingRoom>> _meetingRooms = Rx<List<MeetingRoom>>([]);
  final RoomRepository roomRepository;

  MeetingController({required this.roomRepository});

  List<MeetingRoom> get meetingRooms => _meetingRooms.value;
  @override
  void onReady() {
    super.onReady();
    _fetchData();
  }

  void _fetchData() async {
    roomRepository.getMeetingRoomData().then((_) {
      print(_meetingRooms.value);
    });
  }
}
