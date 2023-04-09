import 'package:flutter_music_responsive_app/app/modules/web/home/home_binding.dart';
import 'package:flutter_music_responsive_app/app/modules/web/home/home_screen.dart';
import 'package:get/get.dart';
import '../modules/web/web_binding.dart';
import '../modules/web/web_screen.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.webScaffold;

  static final routes = [
    GetPage(
      name: AppRouters.webScaffold,
      page: () => const WebScaffold(),
      binding: WebBinding(),
    ),
    GetPage(
      name: AppRouters.webHome,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
