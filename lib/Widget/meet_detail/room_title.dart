import 'package:flutter/material.dart';

class Roomtitle extends StatelessWidget {
  const Roomtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '홍대에서 술 마실 사람 급구!(제목)',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
