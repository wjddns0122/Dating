import 'package:dating/Widget/alarm/alarm_widget.dart';
import 'package:flutter/material.dart';

class Alarm7 extends StatelessWidget {
  const Alarm7({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlarmWidget(
      text: Text(
        '홍길동',
        style: TextStyle(fontSize: 17),
      ),
      text2: Text(
        '나에게 하트를 눌렀어요! 마음에 드시나요?',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
      text3: Text(
        '10월 14일',
        style: TextStyle(color: Colors.grey, fontSize: 13),
      ),
    );
  }
}
