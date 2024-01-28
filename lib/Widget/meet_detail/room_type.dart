import 'package:dating/Widget/meet/container_standard.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/text_styling.dart';
import 'package:flutter/material.dart';

class RoomType extends StatelessWidget {
  const RoomType({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
