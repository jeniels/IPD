import '../controller/book_an_appointment_controller.dart';
import 'package:get/get.dart';

class BookAnAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAnAppointmentController());
  }
}
