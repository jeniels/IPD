import '../controller/dr_details_controller.dart';
import 'package:get/get.dart';

class DrDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrDetailsController());
  }
}
