import 'package:flutter/material.dart';

class ChattingProfile extends StatelessWidget {
  const ChattingProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(45),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.network(
            'https:/  /i.pinimg.com/474x/88/0d/b9/880db9d816b47504adc3be91439cd77e.jpg',
            fit: BoxFit.cover),
      ),
    );
  }
}
