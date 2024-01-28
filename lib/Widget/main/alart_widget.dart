import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final Text text;
  final Widget text2;
  final Widget text3;
  const AlertWidget(
      {super.key,
      required this.text,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text,
                  const SizedBox(
                    height: 4,
                  ),
                  text2,
                ],
              ),
            ],
          ),
          text3
        ],
      ),
    );
  }
}
