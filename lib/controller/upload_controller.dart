import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadController extends GetxController {
  final RxInt _index = 0.obs;
  final ImagePicker picker;
  final Rxn<XFile> _selectImage = Rxn<XFile>();
  UploadController({required this.picker});
  int get index => _index.value;
  XFile? get selectImage => _selectImage.value;

  void changeIndex(int value) {
    _index(value);
    Get.back();
  }

  void pickImage() {
    picker.pickImage(source: ImageSource.gallery).then((image) {
      if (image != null) {
        _selectImage(image);
        _selectImage.refresh();
      }
    }).onError((error, stackTrace) {
      print("$error, $stackTrace");
    });
  }
}
