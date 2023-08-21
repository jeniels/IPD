import '../controller/drug_details_controller.dart';
import 'package:get/get.dart';

class DrugDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugDetailsController());
  }
}
