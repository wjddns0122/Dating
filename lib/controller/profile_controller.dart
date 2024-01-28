import 'dart:convert';

import 'package:dating/utils/api_urls.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Profile {
  final String name;
  final String comment;
  final String gender;
  final String residence;
  final int age;
  final int height;
  final String image;
  final String personalInfo;
  final String mbti;
  final String personality;
  final String interest;
  final String likePersonality;

  Profile({
    required this.name,
    required this.comment,
    required this.gender,
    required this.residence,
    required this.age,
    required this.height,
    required this.image,
    required this.personalInfo,
    required this.mbti,
    required this.personality,
    required this.interest,
    required this.likePersonality,
  });
}

class ProfileController extends GetxController {
  final Rx<Profile> profile = Profile(
    name: "",
    comment: "",
    gender: "",
    residence: "",
    age: 0,
    height: 0,
    image: "",
    personalInfo: "",
    mbti: "",
    personality: "",
    interest: "",
    likePersonality: "",
  ).obs;

  Future<void> fetchProfile() async {
    final response = await http.get(Uri.parse(ApiUrl.profile));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final profileData = Profile(
        name: jsonData['name'],
        comment: jsonData['comment'],
        gender: jsonData['gender'],
        residence: jsonData['residence'],
        age: jsonData['age'],
        height: jsonData['height'],
        image: jsonData['image'],
        personalInfo: jsonData['personalInfo'],
        mbti: jsonData['mbti'],
        personality: jsonData['personality'],
        interest: jsonData['interest'],
        likePersonality: jsonData['likePersonality'],
      );
      profile.value = profileData;
    } else {
      throw Exception("Failed to fetch profile");
    }
  }
}
