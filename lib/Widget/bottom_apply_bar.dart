import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class BottomApplyBar extends StatelessWidget {
  // final double heightPoint;
  final String text;
  final Function onTap;
  const BottomApplyBar(
      {super.key,
      // required this.heightPoint,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: BottomAppBar(
        shadowColor: Colors.white,
        elevation: 0,
        child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: width,
            // height: height * heightPoint,
            height: height * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: fontColor),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
