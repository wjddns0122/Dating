import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/meet/meeting_room.dart';
import 'package:dating/Widget/meet/select_room.dart';
import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/data/repository/room_repository.dart';
import 'package:dating/screen/meet/meeting_create1_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonHeader(text: '오늘의 과팅❤️‍🔥'),
      body: FutureBuilder(
        future: RoomRepository().getMeetingRoomData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            List<MeetingRoom> meetingRooms = snapshot.data!;
            const int index = 0;
            final meetingRoom = meetingRooms[index];
            return SingleChildScrollView(
              child: Column(
                children: [
                  // select college student or general
                  const SelectRoom(),
                  const SizedBox(height: 20),

                  // meeting room
                  Meeting(
                    meetingRoom: meetingRoom,
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          Get.to(const MeetingCreate1Screen());
        },
        backgroundColor: fontColor,
        child: IconShape.iconAdd,
      ),
    );
  }
}
