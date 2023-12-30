import 'package:flutter/material.dart';

import '../../style/constant.dart';

class ChattingBox extends StatelessWidget {
  const ChattingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.grey),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(
                      'https://i.pinimg.com/474x/88/0d/b9/880db9d816b47504adc3be91439cd77e.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '홍길동',
                        style: TextStyle(
                            color: font2Color, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '안녕하세요',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              '9월 25일',
              style: TextStyle(fontSize: 12, color: font2Color),
            )
          ],
        ),
      ),
    );
  }
}
