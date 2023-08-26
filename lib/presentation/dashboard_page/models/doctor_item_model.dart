import 'package:get/get.dart';

class DoctorItemModel {
  Rx<String> nameTxt = Rx("Dr. Marcus Horizo");

  Rx<String> specialtyTxt = Rx("Chardiologist");

  Rx<String> ratingTxt = Rx("4,7");

  Rx<String> distanceTxt = Rx("800m away");

  Rx<String>? id = Rx("");
}
