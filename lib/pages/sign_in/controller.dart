import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat/common/entities/entities.dart';
import 'package:flutter_chat/common/store/store.dart';
import 'package:flutter_chat/pages/sign_in/index.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    "openid",
  ],
);

class SignInController extends GetxController {
  SignInController();

  final state = SignInState();
  final db = FirebaseFirestore.instance;

  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? "";
        final entity = UserLoginResponseEntity();
        entity.email = email;
        entity.accessToken = id;
        entity.displayName = displayName;
        entity.photoUrl = photoUrl;
        UserStore.to.saveProfile(entity);
      }
    } catch (_) {}
  }
}
