import 'package:dating/screen/chat/chatting_screen.dart';
import 'package:dating/screen/feed/feed_screen.dart';
import 'package:dating/screen/main/main_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/screen/meet/meeting_screen.dart';
import 'package:dating/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIdx = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const MainScreen(),
    const MeetingScreen(),
    const FeedScreen(),
    const ChattingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '과팅'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '피드'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: '채팅'),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: '프로필'),
          ],
          onTap: (idx) {
            setState(() {
              _pageIdx = idx;
            });
          },
          selectedItemColor: fontColor,
          unselectedItemColor: Colors.grey,
          currentIndex: _pageIdx,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_pageIdx),
      ),
    );
  }
}
