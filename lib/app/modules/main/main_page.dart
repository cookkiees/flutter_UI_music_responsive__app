import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../components/appbar.dart';
import '../../components/drawer.dart';
import '../../components/play_music.dart';
import '../../utils/my_colors.dart';
import '../home/home_page.dart';
import '../responsive/responsive_layout.dart';
import 'main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      key: controller.scaffoldKeyDrawer,
      appBar: PreferredSize(
          preferredSize: controller.isPhone(context)
              ? Size(MediaQuery.of(context).size.width, 50)
              : Size(MediaQuery.of(context).size.width, 100),
          child: const MyAppbar()),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: const HomePage(),
        tablet: Container(),
        largeTablet: Container(),
        desktop: Row(
          children: const [
            Expanded(child: MyDrawerWidget()),
            Expanded(flex: 10, child: HomePage()),
          ],
        ),
      ),
      endDrawer: const MyDrawerWidget(),
      bottomSheet: const PlayMusicWidget(),
    );
  }
}
