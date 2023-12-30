import 'package:dating/controller/auth_controller.dart';
import 'package:dating/controller/upload_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(UploadController(picker: ImagePicker()));
  }
}
