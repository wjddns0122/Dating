import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HumanAccountSwitchBtn extends StatefulWidget {
  const HumanAccountSwitchBtn({super.key});

  @override
  State<HumanAccountSwitchBtn> createState() => _HumanAccountSwitchBtnState();
}

class _HumanAccountSwitchBtnState extends State<HumanAccountSwitchBtn> {
  bool isHumanAccount = false;

  void _toggleHumanAccount() {
    setState(() {
      isHumanAccount = !isHumanAccount;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Text(
          isHumanAccount ? 'ON' : 'OFF',
          style: TextStyle(
            fontSize: 16,
            color: isHumanAccount ? Colors.green : Colors.red,
          ),
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: true, // 바깥 영역 터치 시 팝업 창 닫을지 말지.
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: const Text('휴먼계정 전환'),
                  content: const Text(
                      '휴먼계정으로 전환할 경우, 타인의 평가를 받거나 타인의 평가에 참여할 수 없습니다. 휴먼계정 전환을 원하시는 경우 전환 버튼을 눌러주세요.'),
                  actions: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _toggleHumanAccount();
                            Get.back();
                          },
                          child: Container(
                            width: width * 0.8,
                            height: width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: fontColor),
                            child: const Center(
                              child: Text(
                                '전환하기',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: inputColor),
                            child: const Center(
                              child: Text(
                                '취소',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
          icon: IconShape.iconArrowForward,
        ),
      ],
    );
  }
}
