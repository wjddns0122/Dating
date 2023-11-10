import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Image.network(
              'https://image.news1.kr/system/photos/2022/12/16/5742694/article.jpg/dims/quality/80/optimize',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.45,
              left: MediaQuery.of(context).size.height * 0.04,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF006B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "ONLINE",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.3,
              left: MediaQuery.of(context).size.height * 0.04,
              child: const Text(
                "홍길동",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.22,
              left: MediaQuery.of(context).size.height * 0.04,
              child: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    '강남구 24세 185cm',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.17,
              left: MediaQuery.of(context).size.height * 0.04,
              child: const Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 20),
                  Text(
                    '홍대 1.2Km',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.035,
              left: MediaQuery.of(context).size.height * 0.04,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 11.5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "채팅하기",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF006B)),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.024,
              left: MediaQuery.of(context).size.height * 0.372,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF006B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/heart.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
