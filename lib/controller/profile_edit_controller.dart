// import 'dart:convert';

// import 'package:dating/utils/api_urls.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../model/user.dart';

// class ProfileController extends GetxController {
//   final Rx<User> user = User().obs;

//   Future<void> fetchProfile() async {
//     // Fetch the initial profile data from the API or other source
//     // and set it to the user.value
//   }

//   Future<void> updateProfile() async {
//     final profileData = user.value.toJson();

//     // Send a PUT request to update the profile
//     final response = await http.put(
//       Uri.parse(ApiUrl.profileUpdate),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(profileData),
//     );

//     if (response.statusCode == 200) {
//       // Profile updated successfully
//     } else {
//       throw Exception("Failed to update profile");
//     }
//   }
// }
