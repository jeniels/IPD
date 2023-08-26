import 'package:ambulance_booking_app/presentation/login_screen/login_screen.dart';
import 'package:ambulance_booking_app/presentation/signup_screen/auth_repo.dart';

import '../profile_page/widgets/settigns_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'models/settigns_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking_app/data/models/s14428637C11bc1f0Af95466f8bfb84b3d41bf3a5/get_s14428637_c11bc1f0_af95466f8bfb84b3d41bf3a5_resp.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0, 0.47),
                        colors: [
                      ColorConstant.cyan300,
                      ColorConstant.teal400
                    ])),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.gradientCyan300Teal400,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMoreicon,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(4),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(top: 25, right: 20)),
                                Container(
                                    width: getHorizontalSize(80),
                                    margin: getMargin(
                                        left: 146, top: 3, right: 149),
                                    padding: getPadding(
                                        left: 4, top: 5, right: 4, bottom: 5),
                                    decoration: AppDecoration.fillGray400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder40),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(top: 54),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                              child: Container(
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCamera,
                                                        height: getSize(10),
                                                        width: getSize(10),
                                                        alignment:
                                                            Alignment.center,
                                                        onTap: () {
                                                          upload();
                                                        })
                                                  ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Text("lbl_amelia_renata".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold18WhiteA700)),
                                Container(
                                    height: getVerticalSize(101),
                                    child: Obx(() => ListView.separated(
                                        padding: getPadding(
                                            left: 42, top: 29, right: 43),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  left: 30.5, right: 30.5),
                                              child: SizedBox(
                                                  height: getVerticalSize(44),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .cyan100)));
                                        },
                                        itemCount: controller
                                            .profileModelObj
                                            .value
                                            .settignsItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          SettignsItemModel model = controller
                                              .profileModelObj
                                              .value
                                              .settignsItemList
                                              .value[index];
                                          return SettignsItemWidget(model);
                                        }))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 41),
                                        padding: getPadding(
                                            left: 20,
                                            top: 31,
                                            right: 20,
                                            bottom: 31),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL30),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 43,
                                                        width: 43,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocation43x43)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 18,
                                                            top: 12,
                                                            bottom: 10),
                                                        child: Text(
                                                            "lbl_my_saved".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold16)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        margin: getMargin(
                                                            top: 10, bottom: 9))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMenu)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 12,
                                                                bottom: 10),
                                                            child: Text(
                                                                "lbl_appointmnet"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 10,
                                                                bottom: 9))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPaymenticon)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 12,
                                                                bottom: 10),
                                                            child: Text(
                                                                "lbl_payment_method"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 9,
                                                                bottom: 10))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 43,
                                                            width: 43,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFaqsicon)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 11,
                                                                bottom: 11),
                                                            child: Text(
                                                                "lbl_faqs".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 10,
                                                                bottom: 9))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50)),
                                              Padding(
                                                padding: getPadding(
                                                    top: 13, bottom: 24),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 43,
                                                        width: 43,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconlylightoutlinedanger)),
                                                    Padding(
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 12,
                                                          bottom: 10),
                                                      child: Text(
                                                        "lbl_help".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold16,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        margin: getMargin(
                                                            top: 10, bottom: 9))
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  AuthenticationRepository
                                                      .instance
                                                      .logout();

                                                  Get.offAll(
                                                    () => LoginScreen(),
                                                  );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "LogOut",
                                                    style: TextStyle(
                                                      color:
                                                          Colors.orangeAccent,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ])))
                              ])
                        ]))),
          ],
        ),
      ),
    );
  }

  Future<void> upload() async {
    Map<String, dynamic> queryParams = {};
    try {
      await controller.callFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5(
        queryParams: queryParams,
      );
      _onUploadSuccess();
    } on GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp {
      _onUploadError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  Future<void> _onUploadSuccess() async {
    Map<String, dynamic> queryParams = {};
    try {
      await controller.callFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5(
        queryParams: queryParams,
      );
      _onFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Success();
    } on GetS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Resp {
      _onFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Error();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Success() {}
  void _onFetchS14428637C11bc1f0Af95466f8bfb84b3d41bf3a5Error() {}
  void _onUploadError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Failure",
        middleText: "FailedToUpload");
  }
}
