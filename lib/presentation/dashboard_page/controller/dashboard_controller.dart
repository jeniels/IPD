import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/dashboard_page/models/dashboard_model.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<DashboardModel> dashboardModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
