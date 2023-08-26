import 'package:ambulance_booking_app/presentation/splash_screen/splash_screen.dart';
import 'package:ambulance_booking_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ambulance_booking_app/presentation/login_screen/login_screen.dart';
import 'package:ambulance_booking_app/presentation/login_screen/binding/login_binding.dart';
import 'package:ambulance_booking_app/presentation/signup_screen/signup_screen.dart';
import 'package:ambulance_booking_app/presentation/signup_screen/binding/signup_binding.dart';
import 'package:ambulance_booking_app/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:ambulance_booking_app/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:ambulance_booking_app/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:ambulance_booking_app/presentation/dr_details_screen/binding/dr_details_binding.dart';
import 'package:ambulance_booking_app/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:ambulance_booking_app/presentation/book_an_appointment_screen/binding/book_an_appointment_binding.dart';
import 'package:ambulance_booking_app/presentation/chat_screen/chat_screen.dart';
import 'package:ambulance_booking_app/presentation/chat_screen/binding/chat_binding.dart';
import 'package:ambulance_booking_app/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:ambulance_booking_app/presentation/drug_details_screen/binding/drug_details_binding.dart';
import 'package:ambulance_booking_app/presentation/article_screen/article_screen.dart';
import 'package:ambulance_booking_app/presentation/article_screen/binding/article_binding.dart';
import 'package:ambulance_booking_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ambulance_booking_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String chatScreen = '/chat_screen';

  static const String profilePage = '/profile_page';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: drDetailsScreen,
      page: () => DrDetailsScreen(),
      bindings: [
        DrDetailsBinding(),
      ],
    ),
    GetPage(
      name: bookAnAppointmentScreen,
      page: () => BookAnAppointmentScreen(),
      bindings: [
        BookAnAppointmentBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: drugDetailsScreen,
      page: () => DrugDetailsScreen(),
      bindings: [
        DrugDetailsBinding(),
      ],
    ),
    GetPage(
      name: articleScreen,
      page: () => ArticleScreen(),
      bindings: [
        ArticleBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
