import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Member {
  final int id;
  final String name;
  final int age;

  Member({required this.id, required this.name, required this.age});
}

class GoodMbtiList {
  final int id;
  final String name;
  final String mbti;

  GoodMbtiList({required this.id, required this.name, required this.mbti});
}

class RandomMember {
  final int id;
  final String name;
  final String residence;
  final int age;
  final int height;
  final String image;

  RandomMember(
      {required this.id,
      required this.name,
      required this.residence,
      required this.age,
      required this.height,
      required this.image});
}

class MemberController extends GetxController {
  final RxList<Member> sendHeartList = <Member>[].obs;
  final RxList<GoodMbtiList> goodMbtiList = <GoodMbtiList>[].obs;
  final RxList<Member> reciveHeartList = <Member>[].obs;
  final RxList<RandomMember> randomMemberList = <RandomMember>[].obs;

  Future<void> fetchSendHeartList() async {
    final response = await http.get(Uri.parse('http://yourservice.url'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList =
          json.decode(response.body)["sendHeartList"];
      sendHeartList.assignAll(
        jsonList
            .map(
              (json) =>
                  Member(id: json['id'], name: json['name'], age: json['age']),
            )
            .toList(),
      );
    } else {
      throw Exception("하트 보내기 실패");
    }
  }

  Future<void> fetchGoodMbtiMemberList() async {
    final response = await http.get(Uri.parse('http://'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body)["goodMbtiList"];
      goodMbtiList.assignAll(jsonList
          .map((json) => GoodMbtiList(
              id: json['id'], name: json['name'], mbti: json['mbti']))
          .toList());
    } else {
      throw Exception("MBTI리스트 불러오기 실패");
    }
  }

  Future<void> fetchReciveHeartList() async {
    final response = await http.get(Uri.parse('http://'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList =
          json.decode(response.body)["reciveHeartList"];
      reciveHeartList.assignAll(jsonList
          .map((json) =>
              Member(id: json['id'], name: json['name'], age: json['age']))
          .toList());
    } else {
      throw Exception("하트 받아오기 실패");
    }
  }

  Future<void> fetchRandomMemberList() async {
    final response = await http.get(Uri.parse('http://'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList =
          json.decode(response.body)["randomMemberList"];
      randomMemberList.assignAll(jsonList
          .map(
            (json) => RandomMember(
                id: json['id'],
                name: json['name'],
                residence: json['residence'],
                age: json['age'],
                height: json['height'],
                image: json['image']),
          )
          .toList());
    } else {
      throw Exception("랜덤 맴버 생성 오류");
    }
  }
}
