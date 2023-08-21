import 'controller/chat_controller.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_image.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ambulance_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowdownGray700,
                    margin: getMargin(left: 21, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                title: AppbarSubtitle(
                    text: "msg_dr_marcus_hori".tr, margin: getMargin(left: 18)),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgVideocamera,
                      margin: getMargin(left: 20, top: 18, right: 18)),
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 15, top: 18, right: 18)),
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 20, top: 20, right: 38, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1),
                              padding: getPadding(
                                  left: 42, top: 16, right: 42, bottom: 16),
                              decoration: AppDecoration.outlineBluegray50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_consultion_star".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterSemiBold16Cyan300),
                                    Padding(
                                        padding: getPadding(top: 6),
                                        child: Text("msg_you_can_consult".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium12))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 20),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 4, bottom: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_hori".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold14),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_10_min_ago".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium10))
                                    ]))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 10),
                          padding: getPadding(
                              left: 15, top: 8, right: 15, bottom: 8),
                          decoration: AppDecoration.fillBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("msg_hello_how_can".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 98, top: 15),
                              padding: getPadding(
                                  left: 14, top: 9, right: 14, bottom: 9),
                              decoration: AppDecoration.bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(205),
                                        margin: getMargin(top: 2),
                                        child: Text("msg_i_have_sufferin".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14WhiteA700))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 4, bottom: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_hori".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold14),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_5_min_ago".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium10))
                                    ]))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 10),
                          padding: getPadding(
                              left: 13, top: 9, right: 13, bottom: 9),
                          decoration: AppDecoration.fillBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(193),
                                    child: Text("msg_ok_do_you_have".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(237),
                              margin: getMargin(left: 98, top: 15),
                              padding: getPadding(
                                  left: 14, top: 7, right: 14, bottom: 7),
                              decoration: AppDecoration.bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(162),
                                        margin: getMargin(top: 2, right: 47),
                                        child: Text("msg_i_don_t_have_an2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14WhiteA700))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 4, bottom: 2),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_hori".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold14),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_online".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium10))
                                    ]))
                          ])),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(left: 1, top: 10, bottom: 5),
                          color: ColorConstant.blueGray50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: Container(
                              height: getVerticalSize(22),
                              width: getHorizontalSize(58),
                              padding: getPadding(
                                  left: 13, top: 8, right: 13, bottom: 8),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL5),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup141,
                                    height: getVerticalSize(5),
                                    width: getHorizontalSize(32),
                                    alignment: Alignment.bottomCenter)
                              ])))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 21, right: 20, bottom: 26),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomTextFormField(
                      width: getHorizontalSize(206),
                      focusNode: FocusNode(),
                      controller: controller.chatboxController,
                      hintText: "msg_type_message".tr,
                      margin: getMargin(bottom: 1),
                      variant: TextFormFieldVariant.OutlineBluegray50,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: getMargin(
                              left: 10, top: 11, right: 8, bottom: 10),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgAttachmentIcon)),
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(49))),
                  CustomButton(
                      height: getVerticalSize(50),
                      width: getHorizontalSize(111),
                      text: "lbl_send".tr,
                      margin: getMargin(left: 17))
                ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
