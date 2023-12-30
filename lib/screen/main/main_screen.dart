import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/main/interested_friends.dart';
import 'package:dating/Widget/main/interested_friends_box.dart';
import 'package:dating/Widget/main/interested_me.dart';
import 'package:dating/Widget/main/interested_me_box.dart';
import 'package:dating/Widget/main/mbti_recommend.dart';
import 'package:dating/Widget/main/profile_main.dart';
import 'package:dating/Widget/main/today_meet.dart';
import 'package:dating/Widget/main/today_meet_box.dart';
import 'package:dating/controller/user_controller.dart';
import 'package:dating/data/model/mbti.dart';
import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/mbti_repository.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:dating/screen/main/alarm_screen.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends GetView<UserController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonHeader(
        text: '캠밋',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Get.to(const AlarmScreen());
              },
              icon: IconShape.iconNotificationOutline,
            ),
          ),
        ],
      ),
      body: FutureBuilder<List<User>>(
        future: UserRepository().getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 디스플레이가 로딩중일 때 나오는 화면
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            // 만약 에러가 발생할 경우 에러메세지 발생
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // 디스플레이에 표시
            List<User> users = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Photo Carousel
                  CarouselSlider.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index, realIndex) {
                      final user = users[index];
                      return ProfileMain(
                        user: user,
                      );
                    },
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        aspectRatio: 1,
                        autoPlay: true,
                        viewportFraction: 0.8),
                  ),
                  const SizedBox(height: 40),

                  // Title and Info
                  const TodayMeet(),
                  const SizedBox(height: 20),

                  // Gesture Box List
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: TodayMeetBox(),
                  ),
                  const SizedBox(height: 30),

                  // Interested Friends
                  const InterestedFriends(),

                  // Interested Friends List
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: InterestedFriendsBox(),
                  ),
                  const SizedBox(height: 30),

                  // Interested me
                  const InterestedMe(),

                  // Interested me List
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: InterestedMeBox(),
                  ),
                  const SizedBox(height: 20),

                  // Recommendations by mbti
                  FutureBuilder<List<Mbti>>(
                    future: MbtiRepository().getListMbtiData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error : ${snapshot.error}'),
                        );
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Center(
                          child: Text('No Data Available'),
                        );
                      } else {
                        List<Mbti> mbtis = snapshot.data!;
                        int index = 0;
                        final mbti = mbtis[index];
                        return MbtiRecommend(
                          mbti: mbti,
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
