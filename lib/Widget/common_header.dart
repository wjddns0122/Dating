import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget implements PreferredSizeWidget {
  const CommonHeader({Key? key, required this.text, this.actions})
      : super(key: key);

  final String text;
  final double _headerHeight = 65;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 25, color: fontColor, fontWeight: FontWeight.bold),
        ),
      ),
      leadingWidth: 200,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: actions,
      toolbarHeight: _headerHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_headerHeight);
}
