import 'package:flutter_music_responsive_app/app/modules/mobile/mobile_controller.dart';
import 'package:flutter_music_responsive_app/app/modules/web/web_controller.dart';
import 'package:get/get.dart';
import 'api_service.dart';

class ApiServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => WebController());
    Get.lazyPut(() => MobileController());
  }
}
