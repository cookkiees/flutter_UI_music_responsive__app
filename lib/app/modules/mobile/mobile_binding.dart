import 'package:flutter_music_responsive_app/app/modules/web/web_controller.dart';
import 'package:get/get.dart';

import 'mobile_controller.dart';

class MobileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MobileController());
  }
}
