import 'controller/splash_controller.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, top: 15, right: 17, bottom: 15),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgHidoclogo,
                      height: getVerticalSize(280),
                      width: getHorizontalSize(338)),
                  CustomButton(
                      height: getVerticalSize(50),
                      text: "lbl_login".tr,
                      margin: getMargin(left: 3, top: 87, right: 3),
                      variant: ButtonVariant.OutlineWhiteA700,
                      onTap: () {
                        onTapLogin();
                      })
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "lbl_sign_up".tr,
                margin: getMargin(left: 20, right: 20, bottom: 46),
                variant: ButtonVariant.FillWhiteA700,
                fontStyle: ButtonFontStyle.InterSemiBold14Teal300_1,
                onTap: () {
                  onTapSignup();
                })));
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
