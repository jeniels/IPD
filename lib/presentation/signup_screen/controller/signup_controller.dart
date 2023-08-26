import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/signup_screen/auth_repo.dart';
import 'package:ambulance_booking_app/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordagainController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordagainController.dispose();
  }
}
