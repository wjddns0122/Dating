import 'package:dating/Widget/feed/feed.dart';
import 'package:dating/data/model/feed.dart';
import 'package:dating/data/repository/feed_repository.dart';
import 'package:dating/screen/feed/feed_add_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: Text(
            '피드',
            style: TextStyle(
                color: fontColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const FeedAddScreen());
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 35,
            ),
            splashRadius: 1,
          ),
        ],
      ),
      body: FutureBuilder<List<Feed>>(
        future: FeedRepository().getFeedList(),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              children: List.generate(
                50,
                (index) => const FeedIcon2(),
              ),
            ),
          );
        },
      ),
    );
  }
}
