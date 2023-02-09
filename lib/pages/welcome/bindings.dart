import 'package:flutter_chat/pages/welcome/controller.dart';
import 'package:get/get.dart';

//TODO : 3
class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
