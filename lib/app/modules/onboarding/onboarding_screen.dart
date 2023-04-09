import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/config/size_config.dart';
import 'package:get/get.dart';
import 'onboarding_controllers.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // To use size config
    SizeConfig().init(context);
    return Container();
  }
}
