import '../dashboard_page/widgets/doctor_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';
import 'models/doctor_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_image.dart';
import 'package:ambulance_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_icon_button.dart';
import 'package:ambulance_booking_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(82),
                title: Container(
                    width: getHorizontalSize(186),
                    margin: getMargin(left: 20),
                    child: Text("msg_find_your_desir".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold24)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(26),
                      width: getHorizontalSize(24),
                      svgPath: ImageConstant.imgNotificationicon,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 19))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 20, top: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller: controller.searchController,
                                  hintText: "msg_search_doctor".tr,
                                  margin: getMargin(right: 20),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 10,
                                          right: 12,
                                          bottom: 9),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            controller.searchController.clear();
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600)))),
                              Padding(
                                  padding: getPadding(top: 20, right: 20),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 71,
                                        width: 71,
                                        variant: IconButtonVariant.FillCyan300,
                                        shape: IconButtonShape.RoundedBorder15,
                                        padding: IconButtonPadding.PaddingAll16,
                                        onTap: () {
                                          onTapBtnUser();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgUserWhiteA700)),
                                    CustomIconButton(
                                        height: 71,
                                        width: 71,
                                        margin: getMargin(left: 17),
                                        variant: IconButtonVariant.FillCyan300,
                                        shape: IconButtonShape.RoundedBorder15,
                                        padding: IconButtonPadding.PaddingAll16,
                                        onTap: () {
                                          onTapBtnCalculator();
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCalculator)),
                                    CustomIconButton(
                                        height: 71,
                                        width: 71,
                                        margin: getMargin(left: 17),
                                        variant: IconButtonVariant.FillCyan300,
                                        shape: IconButtonShape.RoundedBorder15,
                                        padding: IconButtonPadding.PaddingAll16,
                                        onTap: () {
                                          onTapBtnAmbulanceIcon();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgAmbulanceicon)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        onTap: () {
                                          onTapImgCalendar();
                                        })
                                  ])),
                              Container(
                                  width: getHorizontalSize(335),
                                  margin: getMargin(top: 20, right: 20),
                                  padding: getPadding(
                                      left: 25, top: 11, right: 25, bottom: 11),
                                  decoration: AppDecoration.fillBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(186),
                                            margin: getMargin(left: 1, top: 3),
                                            child: Text(
                                                "msg_early_protectio".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold20)),
                                        CustomButton(
                                            height: getVerticalSize(29),
                                            width: getHorizontalSize(108),
                                            text: "lbl_learn_more".tr,
                                            margin: getMargin(top: 6),
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .InterSemiBold12WhiteA700)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 39, right: 21),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_top_doctor".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeall();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 3),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12)))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(186),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(left: 1, top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(14));
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .doctorItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            DoctorItemModel model = controller
                                                .dashboardModelObj
                                                .value
                                                .doctorItemList
                                                .value[index];
                                            return DoctorItemWidget(model,
                                                onTapDoctor: () {
                                              onTapDoctor();
                                            });
                                          })))),
                              Padding(
                                  padding: getPadding(top: 28, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_healt_article".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeallOne();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12)))
                                      ])),
                              Container(
                                  margin: getMargin(top: 15, right: 20),
                                  padding: getPadding(all: 6),
                                  decoration: AppDecoration.outlineBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbnail,
                                            height: getSize(55),
                                            width: getSize(55)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 7,
                                                right: 76,
                                                bottom: 7),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          179),
                                                      child: Text(
                                                          "msg_the_25_healthie"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold10)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_jun_10_20212"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium8Gray500),
                                                            Container(
                                                                height:
                                                                    getSize(2),
                                                                width:
                                                                    getSize(2),
                                                                margin:
                                                                    getMargin(
                                                                        left: 5,
                                                                        top: 3,
                                                                        bottom:
                                                                            4),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .gray500,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(1)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            5),
                                                                child: Text(
                                                                    "lbl_5min_read2"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium8Gray500))
                                                          ]))
                                                ]))
                                      ]))
                            ]))))));
  }

  onTapBtnUser() {}
  onTapBtnCalculator() {}
  onTapBtnAmbulanceIcon() {}
  onTapImgCalendar() {
    Get.toNamed(AppRoutes.articleScreen);
  }

  onTapTxtSeeall() {}
  onTapTxtSeeallOne() {
    Get.toNamed(AppRoutes.articleScreen);
  }

  onTapDoctor() {
    Get.toNamed(
      AppRoutes.drDetailsScreen,
    );
  }
}
