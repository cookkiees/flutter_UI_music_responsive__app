import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/utils/my_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'mobile_controller.dart';

class MobileScreen extends GetView<MobileController> {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.backgrundColor,
        title: const Text("GetX Drawer"),
      ),
      endDrawer: Drawer(
        backgroundColor: MyColors.backgrundColor,
        child: ListView.builder(
          itemCount: controller.icons.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: SvgPicture.asset(controller.icons[index]),
              title: Text(controller.title[index]),
              selected: index == controller.selectedIndex.value,
              onTap: () {
                controller.selectedIndex.value = index;
                Get.back();
              },
            );
          },
        ),
      ),
      body: Center(
        child:
            Obx(() => Text(controller.title[controller.selectedIndex.value])),
      ),
    );
  }
}
