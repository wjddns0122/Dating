import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class TextStyling {
  static Text profileName = Text(
    Human.name,
    style: const TextStyle(
      fontSize: 40,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static Text profileAge = Text(
    Human.age,
    style: const TextStyle(
      fontSize: 13,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static Text profileHeight = Text(
    Human.height,
    style: const TextStyle(
      fontSize: 13,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static Text profileLocation = Text(
    Human.location,
    style: const TextStyle(
      fontSize: 13,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static const profileEdit = Text(
    '프로필 편집',
    style: TextStyle(
      fontSize: 17,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  static const profile = Text(
    '프로필',
    style: TextStyle(
      fontSize: 25,
      color: fontColor,
      fontWeight: FontWeight.bold,
    ),
  );

  static const profileEdit2 = Text(
    '프로필 수정',
    style: TextStyle(
      fontSize: 25,
      color: fontColor,
      fontWeight: FontWeight.bold,
    ),
  );

  static const story = Text(
    '스토리',
    style: TextStyle(
      color: fontColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );

  static const modification = Text(
    '수정 완료',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  static const meetLocation = Text(
    '홍대',
    style: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );

  static const meetJob = Text(
    '일반',
    style: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );

  static const maleNumber = Text('0/2',
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
      overflow: TextOverflow.ellipsis);

  static const femaleNumber = Text('2/2',
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
      overflow: TextOverflow.ellipsis);
}

class Human {
  static String get name => '카리나';
  static String get age => '22세';
  static String get height => '168cm';
  static String get location => '서울 강북구';
}
