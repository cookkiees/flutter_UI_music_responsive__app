import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/main/main_page.dart';
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
      home: const MainPage(),
      initialBinding: ApiServiceBinding(),
      // getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
