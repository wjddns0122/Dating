import 'package:dating/widget/profile/hobby_container.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Text('인적사항'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            spacing: 5,
            runSpacing: 5,
            children: [
              HobbyContainer(
                text: '일반대',
                color: ThemeColor.inputColor,
              ),
              HobbyContainer(
                text: '학생',
                color: ThemeColor.inputColor,
              ),
              HobbyContainer(
                text: 'ESTP',
                color: ThemeColor.inputColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
