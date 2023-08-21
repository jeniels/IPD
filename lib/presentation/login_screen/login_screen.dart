import 'controller/login_controller.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking_app/data/models/login/post_login_req.dart';
import 'package:ambulance_booking_app/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 35, right: 15, bottom: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgHidoclogo42x115,
                          height: getVerticalSize(42),
                          width: getHorizontalSize(115),
                          margin: getMargin(top: 70)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_welcome_to_hido".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("msg_sign_in_to_cont".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(top: 28),
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 8),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 27),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.InterSemiBold14Teal300_1,
                          onTap: () {
                            onTapLogi();
                          }),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapSignUp();
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_a2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.5))),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(0.5))),
                                TextSpan(
                                    text: "lbl_register".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: getHorizontalSize(0.5)))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  Future<void> onTapLogi() async {
    PostLoginReq postLoginReq = PostLoginReq(
      username: controller.emailController.text,
      password: controller.passwordController.text,
    );
    try {
      await controller.callCreateLogin(
        postLoginReq.toJson(),
      );
      _onOnTapLoginSuccess();
    } on PostLoginResp {
      _onOnTapLoginError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapLoginSuccess() {
    Get.offAllNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }

  void _onOnTapLoginError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
