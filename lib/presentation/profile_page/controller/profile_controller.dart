import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/profile_page/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking_app/data/models/s14428637C11bc1f0Af95466f8bfb84b3d41bf3a5/get_s14428637_c11bc1f0_af95466f8bfb84b3d41bf3a5_resp.dart';
import 'package:ambulance_booking_app/data/apiClient/api_client.dart';

class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp
      getS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp =
      GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5(
      {Map<String, dynamic> queryParams = const {}}) async {
    try {
      getS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp =
          await Get.find<ApiClient>()
              .fetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5(
                  queryParams: queryParams);
      _handleFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Success();
    } on GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp catch (e) {
      getS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp = e;
      rethrow;
    }
  }

  void _handleFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Success() {}
}
