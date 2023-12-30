import 'package:photo_manager/photo_manager.dart';

class AlbumModel {
  String? name;
  String? id;
  List<AssetEntity>? images;

  AlbumModel({required this.name, required this.id, required this.images});

  factory AlbumModel.fromGallery(
      String name, String id, List<AssetEntity> images) {
    return AlbumModel(name: name, id: id, images: images);
  }
}
