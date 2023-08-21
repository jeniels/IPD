import '../controller/dashboard_controller.dart';
import '../models/doctor_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget(this.doctorItemModelObj, {this.onTapDoctor});

  DoctorItemModel doctorItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapDoctor;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapDoctor?.call();
          },
          child: Container(
            margin: getMargin(
              right: 14,
            ),
            padding: getPadding(
              left: 7,
              top: 12,
              right: 7,
              bottom: 12,
            ),
            decoration: AppDecoration.outlineBluegray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse27image,
                  height: getSize(
                    68,
                  ),
                  width: getSize(
                    68,
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    top: 10,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 17,
                  ),
                  child: Obx(
                    () => Text(
                      doctorItemModelObj.nameTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 4,
                  ),
                  child: Obx(
                    () => Text(
                      doctorItemModelObj.specialtyTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium9,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 8,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getSize(
                          10,
                        ),
                        width: getSize(
                          10,
                        ),
                        margin: getMargin(
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Obx(
                          () => Text(
                            doctorItemModelObj.ratingTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium8,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 23,
                          top: 2,
                        ),
                        child: Obx(
                          () => Text(
                            doctorItemModelObj.distanceTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium8Bluegray100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
