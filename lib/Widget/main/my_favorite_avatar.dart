import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating/controller/chat_controller.dart';
import 'package:dating/data/model/user.dart';
import 'package:dating/widget/common/chat_send_button.dart';
import 'package:flutter/material.dart';

class ListAvatar extends StatelessWidget {
  final void Function()? onTap;
  final User user;
  const ListAvatar({super.key, this.onTap, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: CachedNetworkImage(
                      imageUrl: user.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.nickName!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "${user.age}세",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        ChatSendButtom(
          onPressed: () {
            ChatController.to.makeChattingRoom(user, ChatType.dm);
          },
        ),
      ],
    );
  }
}
