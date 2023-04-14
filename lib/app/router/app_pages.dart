import 'package:flutter_music_responsive_app/app/modules/home/details/details_page.dart';
import 'package:flutter_music_responsive_app/app/modules/home/home_binding.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_binding.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_page.dart';
import 'package:get/get.dart';
import '../modules/home/home_page.dart';
import 'app_routers.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRouters.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouters.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.detail,
      page: () => const DetailsPage(),
      binding: HomeBinding(),
    ),
  ];
}
