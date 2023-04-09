import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/mobile/mobile_screen.dart';
import 'package:flutter_music_responsive_app/app/modules/responsive/responsive_layout.dart';
import 'package:flutter_music_responsive_app/app/modules/web/web_screen.dart';
import 'package:get/get.dart';
import 'app/router/app_pages.dart';
import 'app/services/api_service_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
      ),
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        desktopScaffold: WebScaffold(),
      ),
      initialRoute: AppPages.initial,
      initialBinding: ApiServiceBinding(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
