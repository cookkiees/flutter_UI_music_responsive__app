import 'package:flutter_music_responsive_app/app/modules/home/home_controller.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_controller.dart';
import 'package:flutter_music_responsive_app/app/modules/playlist/playlist_controller.dart';
import 'package:get/get.dart';
import 'api_service.dart';

class ApiServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => PlaylistController());
  }
}
