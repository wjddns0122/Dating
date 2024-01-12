import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MainFavorite extends StatelessWidget {
  const MainFavorite({super.key});
  Future<void> _handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.white,
                leading: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.pink,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '내가 관심있는 친구',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: fontColor),
                        ),
                      ),
                    ],
                  ),
                ),
                leadingWidth: 300,
                elevation: 0,
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              AlertWidget(
                text: const Text('홍길동'),
                text2: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    Text(
                      '성북구 20세 178cm',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                text3: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF006B), // 배경색 설정
                        borderRadius:
                            BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                      ),
                      child: const Text(
                        '채팅하기',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlertWidget extends StatelessWidget {
  final Text text;
  final Widget text2;
  final Widget text3;
  const AlertWidget({
    super.key,
    required this.text,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text,
                  const SizedBox(
                    height: 4,
                  ),
                  text2,
                ],
              ),
            ],
          ),
          text3
        ],
      ),
    );
  }
}
