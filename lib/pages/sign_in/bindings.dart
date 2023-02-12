import 'package:flutter_chat/pages/sign_in/controller.dart';
import 'package:get/get.dart';

//TODO : 3
class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
