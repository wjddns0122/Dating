import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CammitAppBar extends StatelessWidget {
  final String title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool showCloseButton;
  final void Function()? backAction;
  final PreferredSizeWidget? bottom;
  const CammitAppBar(
      {super.key,
      required this.title,
      this.actions,
      this.showCloseButton = false,
      this.bottom,
      this.backAction,
      this.centerTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      leading: (showCloseButton)
          ? GestureDetector(
              onTap: backAction ?? Get.back,
              child: Icon(
                Icons.close,
                color: ThemeColor.fontColor,
                size: 25,
              ),
            )
          : null,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: ThemeColor.fontColor),
      ),
      centerTitle: showCloseButton,
      actions: actions,
      bottom: bottom,
    );
  }
}
