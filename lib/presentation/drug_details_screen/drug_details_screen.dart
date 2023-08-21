import 'controller/drug_details_controller.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_image.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ambulance_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DrugDetailsScreen extends GetWidget<DrugDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_drugs_detail".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCart,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16),
                      onTap: () {
                        onTapCart();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 48, right: 20, bottom: 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse27image,
                          height: getSize(147),
                          width: getSize(147),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(top: 62),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_obh_combi".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold20),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Text("lbl_75ml".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterSemiBold16Gray500)),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(14),
                                                width: getSize(14),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(14),
                                                width: getSize(14),
                                                margin: getMargin(
                                                    left: 5,
                                                    top: 1,
                                                    bottom: 1)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(14),
                                                width: getSize(14),
                                                margin: getMargin(
                                                    left: 5,
                                                    top: 1,
                                                    bottom: 1)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(14),
                                                width: getSize(14),
                                                margin: getMargin(
                                                    left: 5,
                                                    top: 1,
                                                    bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 5),
                                                child: Text("lbl_4_0".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold14Cyan300))
                                          ]))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFavorite,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 28, bottom: 27))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCar32x32,
                                height: getSize(32),
                                width: getSize(32)),
                            Padding(
                                padding:
                                    getPadding(left: 23, top: 1, bottom: 1),
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold24)),
                            CustomImageView(
                                svgPath: ImageConstant.imgPlus,
                                height: getSize(32),
                                width: getSize(32),
                                margin: getMargin(left: 29)),
                            Spacer(),
                            Text("lbl_9_99".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold26)
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 39),
                          child: Text("lbl_description".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16)),
                      Container(
                          width: getHorizontalSize(331),
                          margin: getMargin(left: 1, top: 10, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_obh_combi_is_a2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_read_more".tr,
                                    style: TextStyle(
                                        color: ColorConstant.cyan300,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      shape: IconButtonShape.RoundedBorder8,
                      padding: IconButtonPadding.PaddingAll14,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgCart50x50)),
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_buy_now".tr,
                          margin: getMargin(left: 19),
                          onTap: () {
                            onTapBuynow();
                          }))
                ]))));
  }

  onTapBuynow() {
    // TODO: implement Actions
  }
  onTapArrowleft3() {
    Get.back();
  }

  onTapCart() {
    // TODO: implement Actions
  }
}
