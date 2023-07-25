import 'package:get/get.dart';
import 'package:wish_gym/presentation/login/controllers/login_controller.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
