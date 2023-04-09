import 'package:flutter/material.dart';
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
      initialRoute: AppPages.initial,
      initialBinding: ApiServiceBinding(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
