import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking_app/data/models/login/post_login_resp.dart';
import 'package:ambulance_booking_app/data/apiClient/api_client.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> callCreateLogin(Map req) async {
    try {
      postLoginResp = await Get.find<ApiClient>().createLogin(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateLoginSuccess();
    } on PostLoginResp catch (e) {
      postLoginResp = e;
      rethrow;
    }
  }

  void _handleCreateLoginSuccess() {
    Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString());
  }
}
