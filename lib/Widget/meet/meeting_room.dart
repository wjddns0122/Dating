import 'package:dating/Widget/meet/meeting_container.dart';
import 'package:dating/data/model/meeting_room.dart';
import 'package:flutter/material.dart';

class Meeting extends StatelessWidget {
  final MeetingRoom meetingRoom;
  const Meeting({super.key, required this.meetingRoom});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: List.generate(
            50,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MeetingContainer(
                meetingRoom: meetingRoom,
              ),
            ),
          ),
        ),
        Column(
          children: List.generate(
            50,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MeetingContainer(
                meetingRoom: meetingRoom,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
