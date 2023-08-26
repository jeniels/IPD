import '../models/timeslots_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimeslotsItemWidget extends StatelessWidget {
  TimeslotsItemWidget(this.timeslotsItemModelObj);

  TimeslotsItemModel timeslotsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 23,
          right: 23,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          timeslotsItemModelObj.timeOneTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: timeslotsItemModelObj.isSelected.value
                ? ColorConstant.whiteA700
                : ColorConstant.gray700,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: timeslotsItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.whiteA700,
        selectedColor: ColorConstant.cyan300,
        shape: timeslotsItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.teal100,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
              ),
        onSelected: (value) {
          timeslotsItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
