import 'package:get/get.dart';
import 'doctor_item_model.dart';

class DashboardModel {
  Rx<List<DoctorItemModel>> doctorItemList =
      Rx(List.generate(3, (index) => DoctorItemModel()));
}
