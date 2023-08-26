import '../dr_details_screen/widgets/dates_item_widget.dart';
import '../dr_details_screen/widgets/timeslots_item_widget.dart';
import 'controller/dr_details_controller.dart';
import 'models/dates_item_model.dart';
import 'models/timeslots_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_image.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ambulance_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance_booking_app/widgets/custom_button.dart';
import 'package:ambulance_booking_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DrDetailsScreen extends GetWidget<DrDetailsController> {
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
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_doctor_detail".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 21, right: 20),
                          padding: getPadding(
                              left: 10, top: 6, right: 10, bottom: 6),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbnail1,
                                height: getSize(111),
                                width: getSize(111),
                                margin: getMargin(top: 4)),
                            Padding(
                                padding: getPadding(
                                    left: 17, top: 9, right: 20, bottom: 7),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_dr_marcus_hori".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_chardiologist".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterMedium12)),
                                      Padding(
                                          padding: getPadding(left: 3, top: 16),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: Text("lbl_4_7".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium12Cyan300))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(left: 3),
                                                child: Text("lbl_800m_away".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium12))
                                          ]))
                                    ]))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 21, top: 23),
                              child: Text("lbl_about".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(313),
                              margin: getMargin(left: 21, top: 11, right: 40),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_lorem_ipsum_dol2".tr,
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
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(97),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 24, top: 33),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(12));
                                  },
                                  itemCount: controller.drDetailsModelObj.value
                                      .datesItemList.value.length,
                                  itemBuilder: (context, index) {
                                    DatesItemModel model = controller
                                        .drDetailsModelObj
                                        .value
                                        .datesItemList
                                        .value[index];
                                    return DatesItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray50,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20))),
                      Padding(
                          padding: getPadding(top: 37, bottom: 5),
                          child: Obx(() => Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller.drDetailsModelObj.value
                                      .timeslotsItemList.value.length, (index) {
                                TimeslotsItemModel model = controller
                                    .drDetailsModelObj
                                    .value
                                    .timeslotsItemList
                                    .value[index];
                                return TimeslotsItemWidget(model);
                              }))))
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
                      onTap: () {
                        onTapBtnCar();
                      },
                      child: CustomImageView(svgPath: ImageConstant.imgCar)),
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_book_apointment".tr,
                          margin: getMargin(left: 19),
                          onTap: () {
                            onTapBookapointmentOne();
                          }))
                ]))));
  }

  onTapBtnCar() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }

  onTapBookapointmentOne() {
    Get.toNamed(
      AppRoutes.bookAnAppointmentScreen,
    );
  }

  onTapArrowleft() {
    Get.back();
  }
}
