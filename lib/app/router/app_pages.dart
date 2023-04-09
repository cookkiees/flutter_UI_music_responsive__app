import 'package:flutter_music_responsive_app/app/modules/responsive/web/web_binding.dart';
import 'package:flutter_music_responsive_app/app/modules/responsive/web/web_screen.dart';
import 'package:get/get.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.webScaffold;

  static final routes = [
    GetPage(
      name: AppRouters.webScaffold,
      page: () => const WebScaffold(),
      binding: WebBinding(),
    ),
  ];
}
