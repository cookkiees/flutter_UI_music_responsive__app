import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/mobile/mobile_screen.dart';
import 'app/modules/responsive/responsive_layout.dart';
import 'app/modules/web/web_screen.dart';
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
        fontFamily: "Quicksand",
        appBarTheme: const AppBarTheme(),
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScreen(),
        desktopScaffold: WebScreen(),
      ),
      initialBinding: ApiServiceBinding(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
