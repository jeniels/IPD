import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/article_screen/models/article_model.dart';
import 'package:flutter/material.dart';

class ArticleController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticleModel> articleModelObj = ArticleModel().obs;

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
