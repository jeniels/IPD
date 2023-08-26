import 'package:ambulance_booking_app/core/app_export.dart';
import 'package:ambulance_booking_app/presentation/book_an_appointment_screen/models/book_an_appointment_model.dart';

class BookAnAppointmentController extends GetxController {
  Rx<BookAnAppointmentModel> bookAnAppointmentModelObj =
      BookAnAppointmentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
