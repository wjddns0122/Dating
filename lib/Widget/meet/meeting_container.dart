import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/screen/meet/meeting_detail_screen.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingContainer extends StatelessWidget {
  final MeetingRoom meetingRoom;
  const MeetingContainer({Key? key, required this.meetingRoom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Get.to(const MeetingDetailScreen());
      },
      child: Container(
        width: width * 0.43,
        height: height * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 8))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            children: [
              Image.network(
                'https://i2.ruliweb.com/ori/21/12/14/17db8edb6652e4fd2.gif',
                fit: BoxFit.cover,
                width: width * 0.43,
                height: height * 0.3,
              ),
              Positioned(
                bottom: width * 0.45,
                left: height * 0.02,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "${meetingRoom.location}",
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 10,
                child: SizedBox(
                  width: width * 0.4,
                  height: height * 0.04,
                  child: Text('${meetingRoom.roomName}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      overflow: TextOverflow.ellipsis),
                ),
              ),
              Positioned(
                bottom: width * 0.08,
                left: height * 0.02,
                child: Row(
                  children: [
                    Text(
                      '${meetingRoom.roomCategory}',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      ' • ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ), // Add some spacing between the texts.
                    Text(
                      '${meetingRoom.ageCategory}',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: width * 0.03,
                left: height * 0.02,
                child: const Row(
                  children: [
                    IconShape.iconMale,
                    Text('3/3',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        overflow: TextOverflow.ellipsis),
                    SizedBox(width: 5),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: IconShape.iconFemale,
                    ),
                    Text('2/3',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
