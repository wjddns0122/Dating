import 'package:dating/screen/profile/profile_edit_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/text_styling.dart';
import 'package:flutter/material.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: fontColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileEditScreen(),
          ),
        );
      },
      child: TextStyling.profileEdit,
    );
  }
}
