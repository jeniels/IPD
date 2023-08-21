import '../article_screen/widgets/article_item_widget.dart';
import 'controller/article_controller.dart';
import 'models/article_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_image.dart';
import 'package:ambulance_booking_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:ambulance_booking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance_booking_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends GetWidget<ArticleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowdownGray700,
                    margin: getMargin(left: 21, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_articles".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 23, right: 20, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_articles".tr,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 12, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("msg_popular_article".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16Black900)),
                      Padding(
                          padding: getPadding(left: 1, top: 13, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(116),
                                    padding: getPadding(
                                        left: 26,
                                        top: 15,
                                        right: 26,
                                        bottom: 15),
                                    decoration: AppDecoration.txtFillCyan300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder10),
                                    child: Text("lbl_covid_19".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(103),
                                    padding: getPadding(
                                        left: 30,
                                        top: 15,
                                        right: 37,
                                        bottom: 15),
                                    decoration: AppDecoration.txtFillCyan300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder10),
                                    child: Text("lbl_diet".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(103),
                                    padding: getPadding(
                                        left: 26,
                                        top: 15,
                                        right: 26,
                                        bottom: 15),
                                    decoration: AppDecoration.txtFillCyan300
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder10),
                                    child: Text("lbl_fitness".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold14WhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 20, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_trending_articl".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12))
                              ])),
                      Padding(
                          padding: getPadding(top: 14, right: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        margin: getMargin(right: 8),
                                        padding: getPadding(
                                            left: 7,
                                            top: 5,
                                            right: 7,
                                            bottom: 5),
                                        decoration: AppDecoration
                                            .outlineBluegray10001
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
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      left: 1, top: 3),
                                                  color: ColorConstant.gray400,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(87),
                                                      width: getHorizontalSize(
                                                          138),
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 5,
                                                          right: 1,
                                                          bottom: 5),
                                                      decoration: AppDecoration
                                                          .fillGray400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBookmark,
                                                            height: getSize(15),
                                                            width: getSize(15),
                                                            alignment: Alignment
                                                                .topRight)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6, top: 13),
                                                  child: Text("lbl_covid_19".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium9Cyan300)),
                                              Container(
                                                  width: getHorizontalSize(106),
                                                  margin: getMargin(
                                                      left: 1, top: 6),
                                                  child: Text(
                                                      "msg_comparing_the".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 6),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_jun_12_2021"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium9Gray500),
                                                        Container(
                                                            height: getSize(2),
                                                            width: getSize(2),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 4,
                                                                bottom: 4),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray500,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_6_min_read"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium9Cyan300))
                                                      ]))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(left: 8),
                                        padding: getPadding(
                                            left: 7,
                                            top: 5,
                                            right: 7,
                                            bottom: 5),
                                        decoration: AppDecoration
                                            .outlineBluegray10001
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
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      left: 1, top: 3),
                                                  color: ColorConstant.gray400,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(87),
                                                      width: getHorizontalSize(
                                                          138),
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 5,
                                                          right: 1,
                                                          bottom: 5),
                                                      decoration: AppDecoration
                                                          .fillGray400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBookmark,
                                                            height: getSize(15),
                                                            width: getSize(15),
                                                            alignment: Alignment
                                                                .topRight)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6, top: 13),
                                                  child: Text("lbl_covid_19".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium9Cyan300)),
                                              Container(
                                                  width: getHorizontalSize(105),
                                                  margin: getMargin(
                                                      left: 1, top: 6),
                                                  child: Text(
                                                      "msg_the_horror_of_t".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold12)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 3),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_jun_10_2021"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium9Gray500),
                                                        Container(
                                                            height: getSize(2),
                                                            width: getSize(2),
                                                            margin: getMargin(
                                                                left: 4,
                                                                top: 4,
                                                                bottom: 4),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray500,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(1)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Text(
                                                                "lbl_5_min_read"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium9Cyan300))
                                                      ]))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_related_article".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold16Black900),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 1),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12))
                              ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: controller.articleModelObj.value
                                  .articleItemList.value.length,
                              itemBuilder: (context, index) {
                                ArticleItemModel model = controller
                                    .articleModelObj
                                    .value
                                    .articleItemList
                                    .value[index];
                                return ArticleItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
