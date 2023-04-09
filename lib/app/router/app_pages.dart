import 'package:get/get.dart';
import '../modules/mobile/mobile_binding.dart';
import '../modules/mobile/mobile_screen.dart';
import '../modules/web/web_binding.dart';
import '../modules/web/views/web_home/web_home_screen.dart';
import '../modules/web/web_screen.dart';
import 'app_routers.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRouters.webScreen,
      page: () => const WebScreen(),
      binding: WebBinding(),
    ),
    GetPage(
      name: AppRouters.webHome,
      page: () => const WebHomeScreen(),
      binding: WebBinding(),
    ),
    GetPage(
      name: AppRouters.mobileScreen,
      page: () => const MobileScreen(),
      binding: MobileBinding(),
    ),
  ];
}
