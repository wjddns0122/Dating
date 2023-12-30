import 'package:dating/controller/upload_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UploadController(picker: ImagePicker()));
  }
}
