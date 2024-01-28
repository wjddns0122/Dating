import 'package:dating/controller/auth_controller.dart';
import 'package:dating/controller/upload_controller.dart';
import 'package:dating/controller/user_controller.dart';
import 'package:dating/data/provider/auth_service.dart';
import 'package:dating/data/provider/user_fetch.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController(
        userRepository: UserRepository(service: UserFetch(dio: Dio()))));
    Get.put(AuthController(service: AuthService(dio: Dio())));
    Get.put(UploadController(picker: ImagePicker()));
  }
}
