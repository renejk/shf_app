import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shf_app/app/services/firebase_services/auth_service.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void login() async {
    UserCredential response = await auth.signInWithGoogle();
    print(response);
  }

  void goToHome() {}
}
