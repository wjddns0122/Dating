import 'dart:io';

import 'package:dating/controller/upload_controller.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomPhotoUpload extends StatelessWidget {
  const RoomPhotoUpload({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: GetX<UploadController>(builder: (controller) {
        final image = controller.selectImage;
        return Container(
          width: width * 0.9,
          height: height * 0.3,
          decoration: BoxDecoration(
            color: inputColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: (image != null)
              ? Image.file(File(image.path))
              : Center(
                  child: Container(
                    width: width * 0.15,
                    height: width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {
                        controller.pickImage();
                      },
                      icon: IconShape.iconPhotoCamera,
                    ),
                  ),
                ),
        );
      }),
    );
  }
}
