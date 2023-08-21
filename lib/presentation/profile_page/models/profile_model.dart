import 'package:get/get.dart';
import 'settigns_item_model.dart';

class ProfileModel {
  Rx<List<SettignsItemModel>> settignsItemList =
      Rx(List.generate(3, (index) => SettignsItemModel()));
}
