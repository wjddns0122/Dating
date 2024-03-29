import 'package:dating/Widget/meet/meeting_container.dart';
import 'package:dating/widget/common_header.dart';
import 'package:dating/widget/meet/meeting_room.dart';
import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/data/repository/room_repository.dart';
import 'package:dating/screen/meet/meeting_create1_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen>
    with SingleTickerProviderStateMixin {
  late RoomRepository repository;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    repository = RoomRepository();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            '오늘의 과팅❤️‍🔥',
            style: TextStyle(
                fontSize: 25,
                color: ThemeColor.fontColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        leadingWidth: 200,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 65,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Get.to(() => const MeetingCreate1Screen());
                },
                child: Icon(
                  Icons.add,
                  color: ThemeColor.fontColor,
                )),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: SizedBox(
              height: AppBar().preferredSize.height,
              width: double.infinity,
              child: TabBar(
                indicatorColor: ThemeColor.fontColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 1.0,
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(
                    text: "대학생",
                  ),
                  Tab(
                    text: "일반인",
                  ),
                ],
                controller: _tabController,
              ),
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _junior(),
          _senior(),
        ],
      ),
    );
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _error(String error) {
    return Center(
      child: Text(error),
    );
  }

  Widget _junior() => FutureBuilder(
        future: repository.getMeetingRoomData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _loading();
          } else if (snapshot.hasError) {
            return _error(snapshot.error.toString());
          } else {
            List<MeetingRoom> meetingRooms = snapshot.data!;
            const int index = 0;
            final meetingRoom = meetingRooms[index];
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
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
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              ),
            );
          }
        },
      );

  Widget _senior() => FutureBuilder(
        future: repository.getMeetingRoomData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _loading();
          } else if (snapshot.hasError) {
            return _error(snapshot.error.toString());
          } else {
            List<MeetingRoom> meetingRooms = snapshot.data!;
            const int index = 0;
            final meetingRoom = meetingRooms[index];
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
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
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              ),
            );
          }
        },
      );
}
