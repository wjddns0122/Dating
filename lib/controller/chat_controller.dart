import 'package:dating/data/model/chat.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatController extends GetxController {
  var messages = <ChatMessage>[].obs;

  void addMessage(ChatMessage message) {
    messages.add(message);
  }
}

Future<List<ChatMessage>> fetchChatMessages() async {
  final response =
      await http.get(Uri.parse(ApiUrl.messages)); // 석환이형 백엔드 url -> 메시지 패치

  if (response.statusCode == 200) {
    Iterable data = json.decode(response.body);
    return data.map((message) => ChatMessage.fromJson(message)).toList();
  } else {
    throw Exception('Failed to load chat messages');
  }
}

Future<ChatMessage> sendMessage(ChatMessage message) async {
  // 메세지 보내기
  final response = await http.post(
    Uri.parse(ApiUrl.sendMessages),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(message.toJson()),
  );

  if (response.statusCode == 200) {
    return ChatMessage.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to send message');
  }
}
