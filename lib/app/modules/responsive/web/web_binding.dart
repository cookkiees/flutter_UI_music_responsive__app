import 'package:flutter_music_responsive_app/app/modules/responsive/web/controller/web_controller.dart';
import 'package:get/get.dart';

class WebBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(WebController());
  }
}
