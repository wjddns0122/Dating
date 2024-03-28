import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating/Widget/main/profile_main.dart';
import 'package:dating/screen/profile/someone_profile_screen.dart';
import 'package:dating/widget/common_header.dart';
import 'package:dating/widget/main/circle_avatar.dart';
import 'package:dating/Widget/main/mbti_recommend.dart';
import 'package:dating/Widget/main/today_meet.dart';
import 'package:dating/Widget/main/today_meet_box.dart';
import 'package:dating/controller/user_controller.dart';
import 'package:dating/data/model/mbti.dart';
import 'package:dating/data/repository/mbti_repository.dart';
import 'package:dating/screen/main/alarm_screen.dart';
import 'package:dating/screen/main/main_favorite_me_screen.dart';
import 'package:dating/screen/main/main_favorite_screen.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:dating/utils/status_enum.dart';
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
                Get.to(() => const AlarmScreen());
              },
              icon: IconShape.iconNotificationOutline,
            ),
          ),
        ],
      ),
      body: Obx(
        () => RefreshIndicator.adaptive(
            onRefresh: controller.fetchData,
            child: (controller.status == Status.LOADING)
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : _buildBody()),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 오늘의 추천 상대(상대방 무작위 하루 10명 제한 줄 것.)
          (controller.users!.randomMemberList.isNotEmpty)
              ? CarouselSlider.builder(
                  itemCount: controller.users!.randomMemberList.length,
                  itemBuilder: (context, index, realIndex) {
                    final user = controller.users!.randomMemberList[index];

                    // final user = controller.users[index];
                    return ProfileMain(
                      randomUser: user,
                    );
                  },
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      aspectRatio: 1,
                      autoPlay: true,
                      viewportFraction: 0.8),
                )
              : const SizedBox(
                  height: 300,
                  child: Center(
                    child: Text(
                      "아직 사용자 없습니다 !",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

          // Title and Info
          // const TodayMeet(),
          // const SizedBox(height: 20),

          // // Gesture Box List
          // const SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: TodayMeetBox(),
          // ),
          // const SizedBox(height: 30),

          /// 내가 관심있는 상대 텍스트, 관심있는 상대방 목록 세부 페이지
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '내가 관심 있는 친구',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Get.to(() => const MainFavoriteScreen());
                  },
                ),
              ],
            ),
          ),

          /// 내가 관심있는 상대방 목록
          SizedBox(
            height: 200,
            child: (controller.users!.sendHeartList.isNotEmpty)
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: List.generate(
                            controller.users!.sendHeartList.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Avatar(
                              onTap: () {
                                Get.to(() => const SomeoneProfileScreen());
                              },
                            ),
                          );
                        }),
                      ),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: List.generate(
                      //     50,
                      //     (index) => Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //           vertical: 10, horizontal: 10),
                      //       child: Avatar(
                      //         onTap: () {
                      //           Get.to(() => const SomeoneProfileScreen());
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  )
                : const Center(
                    child: Text(
                      "아직 사용자 없습니다 !",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
          ),

          /// 나한테 관심있는 상대 텍스트, 나한테 관심있는 상대방 목록 세부 페이지
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '나한테 관심 있는 친구',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Get.to(() => const MainFavoriteMeScreen());
                  },
                ),
              ],
            ),
          ),

          /// 나한테 관심있는 상대방 목록
          SizedBox(
            height: 200,
            child: (controller.users!.receiverHeartList.isNotEmpty)
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          50,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Avatar(
                              onTap: () {
                                Get.to(() => const SomeoneProfileScreen());
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const Center(
                    child: Text(
                      "아직 사용자 없습니다 !",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
          ),
          const SizedBox(height: 80),

          /// mbti별 추천 조합
          // FutureBuilder<List<Mbti>>(
          //   future: MbtiRepository().getListMbtiData(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (snapshot.hasError) {
          //       return Center(
          //         child: Text('Error : ${snapshot.error}'),
          //       );
          //     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          //       return const Center(
          //         child: Text('No Data Available'),
          //       );
          //     } else {
          //       List<Mbti> mbtis = snapshot.data!;
          //       int index = 0;
          //       final mbti = mbtis[index];
          //       return MbtiRecommend(
          //         mbti: mbti,
          //       );
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}
