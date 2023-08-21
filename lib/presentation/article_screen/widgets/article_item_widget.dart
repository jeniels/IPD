import '../controller/article_controller.dart';
import '../models/article_item_model.dart';
import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  ArticleItemWidget(this.articleItemModelObj);

  ArticleItemModel articleItemModelObj;

  var controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 5,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: getSize(
              59,
            ),
            width: getSize(
              59,
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 5,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    189,
                  ),
                  child: Obx(
                    () => Text(
                      articleItemModelObj.theHealthiestTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          articleItemModelObj.languageTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9Gray500,
                        ),
                      ),
                      Container(
                        height: getSize(
                          2,
                        ),
                        width: getSize(
                          2,
                        ),
                        margin: getMargin(
                          left: 4,
                          top: 4,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Obx(
                          () => Text(
                            articleItemModelObj.timeTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium9Cyan300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgBookmark15x15,
            height: getSize(
              15,
            ),
            width: getSize(
              15,
            ),
            margin: getMargin(
              left: 42,
              top: 7,
              bottom: 38,
            ),
          ),
        ],
      ),
    );
  }
}
