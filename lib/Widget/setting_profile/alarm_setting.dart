import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmSetting extends StatefulWidget {
  const AlarmSetting({super.key});

  @override
  State<AlarmSetting> createState() => _AlarmSettingState();
}

class _AlarmSettingState extends State<AlarmSetting> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '알림 설정',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          CupertinoSwitch(
            value: switchValue,
            activeColor: CupertinoColors.activeBlue,
            onChanged: (bool value) {
              setState(() {
                switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
