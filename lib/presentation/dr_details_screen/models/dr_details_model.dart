import 'package:get/get.dart';
import 'dates_item_model.dart';
import 'timeslots_item_model.dart';

class DrDetailsModel {
  Rx<List<DatesItemModel>> datesItemList =
      Rx(List.generate(7, (index) => DatesItemModel()));

  Rx<List<TimeslotsItemModel>> timeslotsItemList =
      Rx(List.generate(9, (index) => TimeslotsItemModel()));
}
