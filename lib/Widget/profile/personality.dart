import 'package:dating/Widget/profile/hobby_container.dart';
import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Text('성격'),
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
                text: '털털한',
                color: inputColor,
              ),
              HobbyContainer(
                text: '기모띠',
                color: inputColor,
              ),
              HobbyContainer(
                text: '자유로운',
                color: inputColor,
              ),
              HobbyContainer(
                text: '유쾌한',
                color: inputColor,
              ),
              HobbyContainer(
                text: '대담한',
                color: inputColor,
              ),
              HobbyContainer(
                text: '보수적인',
                color: inputColor,
              ),
              HobbyContainer(
                text: '재밌는',
                color: inputColor,
              ),
              HobbyContainer(
                text: '호전적인',
                color: inputColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
