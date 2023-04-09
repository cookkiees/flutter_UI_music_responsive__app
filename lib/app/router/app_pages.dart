import 'package:get/get.dart';
import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_screen.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.onboarding;

  static final routes = [
    GetPage(
      name: AppRouters.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
  ];
}
