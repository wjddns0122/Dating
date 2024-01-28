import 'package:flutter/material.dart';

class InterestedMe extends StatelessWidget {
  const InterestedMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            '나한테 관심 있는 친구',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
