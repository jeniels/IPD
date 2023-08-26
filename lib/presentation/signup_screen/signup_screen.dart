import 'controller/signup_controller.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking_app/domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupScreen extends GetWidget<SignupController> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.cyan300,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 15, top: 20, right: 15, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgHidoclogo42x115,
                  height: getVerticalSize(42),
                  width: getHorizontalSize(115),
                  margin: getMargin(top: 40)),
              Padding(
                  padding: getPadding(top: 25),
                  child: Text("msg_let_s_get_start".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold16Indigo900
                          .copyWith(letterSpacing: getHorizontalSize(0.5)))),
              Padding(
                  padding: getPadding(top: 9),
                  child: Text("msg_create_an_new_a".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12WhiteA700
                          .copyWith(letterSpacing: getHorizontalSize(0.5)))),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.fullnameController,
                        hintText: "lbl_full_name".tr,
                        margin: getMargin(top: 26),
                        prefix: Container(
                            margin: getMargin(
                                left: 16, top: 12, right: 10, bottom: 12),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgUser)),
                        prefixConstraints:
                            BoxConstraints(maxHeight: getVerticalSize(48))),
                    CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.emailController,
                        hintText: "lbl_your_email".tr,
                        margin: getMargin(top: 8),
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
                        margin: getMargin(top: 6),
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
                        text: "lbl_sign_up".tr,
                        margin: getMargin(top: 39),
                        variant: ButtonVariant.FillWhiteA700,
                        fontStyle: ButtonFontStyle.InterSemiBold14Teal300_1,
                        onTap: () {
                          signUp();
                        }),
                  ],
                ),
              ),
              CustomButton(
                  height: getVerticalSize(50),
                  text: "lbl_sign_up_with_google".tr,
                  margin: getMargin(top: 10),
                  variant: ButtonVariant.FillWhiteA700,
                  fontStyle: ButtonFontStyle.InterSemiBold14Teal300_1,
                  onTap: () {
                    signUpGoogle();
                  }),
              Spacer(),
              GestureDetector(
                onTap: () {
                  onTapSignIn();
                },
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_have_an".tr,
                          style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(12),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: getHorizontalSize(0.5))),
                      TextSpan(
                          text: "lbl_account".tr,
                          style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(12),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: getHorizontalSize(0.5))),
                      TextSpan(
                          text: "lbl2".tr,
                          style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(12),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              letterSpacing: getHorizontalSize(0.5))),
                      TextSpan(
                          text: " ",
                          style: TextStyle(
                              color: ColorConstant.indigoA200,
                              fontSize: getFontSize(12),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              letterSpacing: getHorizontalSize(0.5))),
                      TextSpan(
                          text: "lbl_sign_in2".tr,
                          style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(12),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              letterSpacing: getHorizontalSize(0.5)))
                    ]),
                    textAlign: TextAlign.left),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signUp() async {
    if (_formKey.currentState!.validate()) {
      controller.registerUser(
        controller.emailController.text.trim(),
        controller.passwordController.text.trim(),
      );
    }
  }

  signUpGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser);
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }

  onTapSignIn() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
