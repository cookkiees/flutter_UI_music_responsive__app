import 'package:get/get.dart';
import 'onboarding_controllers.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardingController());
  }
}
