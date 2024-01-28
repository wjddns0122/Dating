import 'package:dating/Widget/meet/container_standard.dart';
import 'package:flutter/material.dart';

class ExplainRoom extends StatelessWidget {
  const ExplainRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}
