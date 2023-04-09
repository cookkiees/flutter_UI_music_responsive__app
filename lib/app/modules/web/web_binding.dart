import 'package:get/get.dart';
import 'web_controller.dart';

class WebBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(WebController());
  }
}
