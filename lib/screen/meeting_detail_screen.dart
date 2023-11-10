import 'package:dating/Widget/meet/container_standard.dart';
import 'package:dating/Widget/meet/mini_profile.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:dating/style/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingDetail extends StatelessWidget {
  const MeetingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 8)),
              ], color: Colors.white),
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.network(
                      'https://i.pinimg.com/474x/a6/24/5b/a6245bee6c4461558e293551fa463265.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 40,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: IconShape.iconArrowBack,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 10),
                  child: ContainerStandard(
                    w: 0.13,
                    h: 0.05,
                    color: fontColor,
                    c: 20,
                    child: TextStyling.meetJob,
                  ),
                ),
                ContainerStandard(
                  w: 0.13,
                  h: 0.05,
                  color: fontColor,
                  c: 20,
                  child: TextStyling.meetLocation,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '홍대에서 술 마실 사람 급구!(제목)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: ContainerStandard(
                w: 0.85,
                h: 0.2,
                color: Color.fromARGB(255, 214, 211, 211),
                c: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  child: Center(
                    child: Text(
                      '22살, 23살 여자 두 명이에요! 잘생긴 남자 두 분 구해요 ㅎㅎ(2줄까지)',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.002,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 10),
              child: Row(
                children: [
                  Text('참여 중인 사람 : '),
                  SizedBox(width: 5),
                  IconShape.iconMale,
                  SizedBox(width: 5),
                  TextStyling.MaleNumber,
                  SizedBox(width: 5),
                  IconShape.iconFemale,
                  SizedBox(width: 5),
                  TextStyling.FemaleNumber,
                ],
              ),
            ),
            const MiniProfile(),
            const MiniProfile(),
            const MiniProfile(),
          ],
        ),
      ),
    );
  }
}
