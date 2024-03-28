import 'package:dating/Widget/meet/container_standard.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/widget/icon_header.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:dating/style/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingDetailScreen extends StatelessWidget {
  const MeetingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '오늘의 과팅❤️‍🔥'),
      body: SafeArea(
        child: CustomScrollView(slivers: [
          // room manager profile
          _roomMasterProfile(),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),

          // show room type
          _roomType(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),

          // // room title
          _roomTitle(),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),

          // // explanation of the room
          _description(),

          const SliverToBoxAdapter(child: SizedBox(height: 50)),

          // // deviding line
          const SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
                child: Divider(
              color: Colors.grey,
            )),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),

          // Number of people participating
          const SliverToBoxAdapter(
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
          // _group(),
        ]),
      ),
    );
  }

  /// 과팅 속성 랜더링
  Widget _roomType() => const SliverToBoxAdapter(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 10),
              child: ContainerStandard(
                child: TextStyling.meetJob,
              ),
            ),
            ContainerStandard(
              child: TextStyling.meetLocation,
            ),
          ],
        ),
      );

  Widget _roomMasterProfile() => SliverToBoxAdapter(
        child: AspectRatio(
          aspectRatio: 1.2,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ClipRRect(
              child: Image.network(
                'https://i.pinimg.com/474x/a6/24/5b/a6245bee6c4461558e293551fa463265.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  Widget _roomTitle() => const SliverPadding(
        padding: EdgeInsets.only(left: 30.0, right: 10),
        sliver: SliverToBoxAdapter(
          child: Text(
            '홍대에서 술 마실 사람 급구!(제목)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget _description() => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        sliver: SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff9e9e9e)),
            child: const Text(
              '22살, 23살 여자 두 명이에요! 잘생긴 남자 두 분 구해요 ㅎㅎ(2줄까지)',
            ),
          ),
        ),
      );

  Widget _group() => SliverToBoxAdapter(
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                width: Get.size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fpbs.twimg.com%2Fmedia%2FFuPnvFuWAAIUYCg.jpg&type=a340',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('안유진',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(height: 5),
                Text('24세 성북구', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      );
}
