import 'package:dating/Widget/icon_header.dart';
import 'package:dating/Widget/meet_detail/explain_room.dart';
import 'package:dating/Widget/meet_detail/room_manager_profile.dart';
import 'package:dating/Widget/meet_detail/room_title.dart';
import 'package:dating/Widget/meet_detail/room_type.dart';
import 'package:dating/Widget/meet/mini_profile.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:dating/style/text_styling.dart';
import 'package:flutter/material.dart';

class MeetingDetailScreen extends StatelessWidget {
  const MeetingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const IconHeader(text: '오늘의 과팅❤️‍🔥'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // room manager profile
            const RoomManagerProfile(),
            const SizedBox(height: 30),

            // show room type
            const RoomType(),
            const SizedBox(height: 10),

            // room title
            const Roomtitle(),
            const SizedBox(height: 15),

            // explanation of the room
            const ExplainRoom(),
            const SizedBox(height: 50),

            // deviding line
            Container(
              width: width,
              height: height * 0.002,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Number of people participating
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 10),
              child: Row(
                children: [
                  Text('참여 중인 사람 : '),
                  SizedBox(width: 5),
                  IconShape.iconMale,
                  SizedBox(width: 5),
                  TextStyling.maleNumber,
                  SizedBox(width: 5),
                  IconShape.iconFemale,
                  SizedBox(width: 5),
                  TextStyling.femaleNumber,
                ],
              ),
            ),

            // status of people participating
            // miniprofile이 남자는 왼쪽에 여자는 오른쪽에 오게 하는 방법을 몰라서 해결해 주실 수 있는 분~
            const MiniProfile(),
            const MiniProfile(),
            const MiniProfile(),
          ],
        ),
      ),
    );
  }
}
