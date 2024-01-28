import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class RoomTitle extends StatelessWidget {
  const RoomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 15,
      style: const TextStyle(
        decorationThickness: 0,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        counterText: '',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: inputColor),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: '제목은 최대 15자로 제한',
      ),
    );
  }
}
