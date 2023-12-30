import 'package:dating/Widget/alarm/alarm1.dart';
import 'package:dating/Widget/alarm/alarm10.dart';
import 'package:dating/Widget/alarm/alarm2.dart';
import 'package:dating/Widget/alarm/alarm3.dart';
import 'package:dating/Widget/alarm/alarm4.dart';
import 'package:dating/Widget/alarm/alarm5.dart';
import 'package:dating/Widget/alarm/alarm6.dart';
import 'package:dating/Widget/alarm/alarm7.dart';
import 'package:dating/Widget/alarm/alarm8.dart';
import 'package:dating/Widget/alarm/alarm9.dart';
import 'package:dating/Widget/icon_header.dart';
import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: IconHeader(text: '알림'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Alarm1(),
            Alarm2(),
            Alarm3(),
            Alarm4(),
            Alarm5(),
            Alarm6(),
            Alarm7(),
            Alarm8(),
            Alarm9(),
            Alarm10(),
          ],
        ),
      ),
    );
  }
}
