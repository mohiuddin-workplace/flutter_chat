import 'package:flutter_chat/common/routes/names.dart';
import 'package:flutter_chat/common/store/config.dart';
import 'package:flutter_chat/pages/welcome/state.dart';
import 'package:get/get.dart';

//TODO : 3
class WelcomeController extends GetxController {
  final state = WelcomeState();

  WelcomeController();

  changePage(int index) async {
    state.index.value == index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
