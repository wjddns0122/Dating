import 'package:dating/data/model/user.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatefulWidget {
  final User user;
  const ProfileMain({super.key, required this.user});
  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.8,
      height: height * 0.8,
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
              widget.user.image ??
                  'https://image.news1.kr/system/photos/2022/12/16/5742694/article.jpg/dims/quality/80/optimize',
              fit: BoxFit.cover,
              width: width * 0.8,
              height: height * 0.8,
            ),
            Positioned(
              bottom: width * 0.45,
              left: height * 0.04,
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
              bottom: width * 0.3,
              left: height * 0.04,
              child: Text(
                '${widget.user.name}',
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Positioned(
              bottom: width * 0.22,
              left: height * 0.04,
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    '${widget.user.residence} ${widget.user.height}cm',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: width * 0.17,
              left: height * 0.04,
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
              bottom: width * 0.035,
              left: height * 0.03,
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
              bottom: width * 0.024,
              left: height * 0.38,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF006B),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
