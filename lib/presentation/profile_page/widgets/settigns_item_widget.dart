import '../controller/profile_controller.dart';
import '../models/settigns_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  SettignsItemWidget(this.settignsItemModelObj);

  SettignsItemModel settignsItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 61,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgLocation32x32,
              height: getSize(
                32,
              ),
              width: getSize(
                32,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  settignsItemModelObj.heartrateTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold10Cyan100,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Obx(
                () => Text(
                  settignsItemModelObj.heartratecountTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16WhiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
