import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class RoomExplain extends StatelessWidget {
  const RoomExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 50,
      maxLines: 5,
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
        labelText: '방 설명은 최대 50자로 제한',
      ),
    );
  }
}
