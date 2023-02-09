import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/welcome/controller.dart';
import 'package:get/get.dart';

//TODO : 3
class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("First Page"),
      ),
    );
  }
}
