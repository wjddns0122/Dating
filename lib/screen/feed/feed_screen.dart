import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/feed/feed.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonHeader(text: '피드'),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            50,
            (index) => const Feed(),
          ),
        ),
      ),
    );
  }
}
