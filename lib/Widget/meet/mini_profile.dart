import 'package:flutter/material.dart';

class MiniProfile extends StatelessWidget {
  const MiniProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: width * 0.2,
            height: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fpbs.twimg.com%2Fmedia%2FFuPnvFuWAAIUYCg.jpg&type=a340',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('안유진',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            SizedBox(height: 5),
            Text('24세 성북구', style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
