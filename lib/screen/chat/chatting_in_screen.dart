import 'package:dating/Widget/chat/chat.dart';
import 'package:dating/Widget/chat/chatting_profile.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChattingInScreen extends StatefulWidget {
  const ChattingInScreen({super.key});

  @override
  _ChattingInScreenState createState() => _ChattingInScreenState();
}

class _ChattingInScreenState extends State<ChattingInScreen> {
  final textController = TextEditingController();
  List<Chat> chats = [];
  void sendMessage() {
    setState(() {
      if (textController.text.isNotEmpty) {
        chats.add(Chat(text: Text(textController.text)));
        textController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Center(
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: IconShape.iconArrowBackIos,
                ),
              ),
              const Text(
                '홍길동',
                style: TextStyle(
                    color: fontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        leadingWidth: 400,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      children: [
                        const ChattingProfile(),
                        chats[index],
                      ],
                    )),
              ],
            ),
          );
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.photo)),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(
                        hintText: ' 입력 ..', border: InputBorder.none),
                    onSubmitted: (Value) {
                      sendMessage();
                    }),
              ),
            ),
            IconButton(onPressed: sendMessage, icon: const Icon(Icons.send))
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
