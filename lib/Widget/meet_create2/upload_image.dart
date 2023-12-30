import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class UploadImage extends StatelessWidget {
  final AssetEntity entity;
  final BoxFit fit;
  const UploadImage({super.key, required this.entity, required this.fit});

  @override
  Widget build(BuildContext context) {
    return AssetEntityImage(
      entity,
      fit: fit,
      isOriginal: false,
    );
  }
}
