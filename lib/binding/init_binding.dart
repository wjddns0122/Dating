import 'package:dating/controller/auth_controller.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
