import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconHeader extends StatelessWidget implements PreferredSizeWidget {
  const IconHeader({super.key, required this.text});

  final double _headerHeight = 65;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: IconShape.iconArrowBack,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: fontColor),
      ),
      toolbarHeight: _headerHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_headerHeight);
}
