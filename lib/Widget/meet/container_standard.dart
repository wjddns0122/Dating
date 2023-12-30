import 'package:flutter/material.dart';

class ContainerStandard extends StatelessWidget {
  final double w;
  final double h;
  final double c;
  final dynamic child;
  final Color? color;
  const ContainerStandard({
    super.key,
    required this.w,
    required this.h,
    this.child,
    required this.c,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.width * h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(c),
      ),
      child: child,
    );
  }
}
