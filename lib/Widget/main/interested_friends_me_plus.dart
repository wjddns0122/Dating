import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MainFavoriteMe extends StatelessWidget {
  const MainFavoriteMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  '나한테 관심있는 친구',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
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
              text3: Positioned(
                bottom: MediaQuery.of(context).size.width * 0.024,
                left: MediaQuery.of(context).size.height * 0.372,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF006B),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/heart.png'),
                ),
              ),
            ),
          ],
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
