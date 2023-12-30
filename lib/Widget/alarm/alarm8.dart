import 'package:dating/Widget/alarm/alarm_widget.dart';
import 'package:flutter/material.dart';

class Alarm8 extends StatelessWidget {
  const Alarm8({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlarmWidget(
      text: Text(
        '남동길',
        style: TextStyle(fontSize: 17),
      ),
      text2: Text(
        '나에게 채팅을 보냈네요?"안녕하세요? 뭐하고 계세 \n요?"',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
      text3: Text(
        '10월 14일',
        style: TextStyle(color: Colors.grey, fontSize: 13),
      ),
    );
  }
}
