import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WithdrawalBtn extends StatelessWidget {
  const WithdrawalBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: true, // 바깥 영역 터치 시 팝업 창 닫을지 말지.
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                title: const Text('회원탈퇴'),
                content:
                    const Text('캠밋을 탈퇴하면 계정의 모든 정보가 삭제되며, 삭제된 정보는 복구할 수 없습니다.'),
                actions: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
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
                              '회원탈퇴',
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
                          width: width * 0.8,
                          height: width * 0.1,
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
        icon: IconShape.iconArrowForward);
  }
}
