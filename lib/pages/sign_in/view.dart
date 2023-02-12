import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/sign_in/controller.dart';
import 'package:get/get.dart';

//TODO : 3
class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => controller.handleSignIn(),
          child: Text("Google Login"),
        ),
      ),
    );
  }
}
