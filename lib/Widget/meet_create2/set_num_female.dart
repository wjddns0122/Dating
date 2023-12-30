import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';

class SetNumFemale extends StatefulWidget {
  const SetNumFemale({super.key});

  @override
  State<SetNumFemale> createState() => _SetNumFemaleState();
}

class _SetNumFemaleState extends State<SetNumFemale> {
  int numberMale = 0;

  void increment() {
    setState(() {
      if (numberMale < 5) {
        numberMale++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (numberMale > 0) {
        numberMale--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconShape.iconFemale,
        const SizedBox(width: 10),
        Container(
          width: width * 0.3,
          height: 40,
          decoration: BoxDecoration(
            color: inputColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: decrement,
                icon: const Icon(Icons.remove),
              ),
              Text(
                '$numberMale',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: increment,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
