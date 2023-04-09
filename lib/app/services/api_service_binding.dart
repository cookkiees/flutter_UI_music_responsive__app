import 'package:get/get.dart';
import 'api_service.dart';

class ApiServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
  }
}
