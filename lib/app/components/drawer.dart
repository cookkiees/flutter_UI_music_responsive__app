import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../config/size_config.dart';
import '../utils/my_colors.dart';

class MyDrawerWidget extends GetView<MainController> {
  const MyDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: controller.isPhone(context) ? 240 : 200,
      backgroundColor:
          controller.isPhone(context) ? MyColors.dark : Colors.transparent,
      elevation: 0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            const SizedBox(height: 64),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: controller.isPhone(context)
                  ? ListView.builder(
                      itemCount: controller.icon.length,
                      itemBuilder: (context, index) {
                        return Obx(
                          () => ListTile(
                            splashColor: MyColors.backgrundColor,
                            onTap: () => controller.selectedIndex.value = index,
                            title: Text(
                              controller.title[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: controller.selectedIndex.value == index
                                    ? Colors.amber
                                    : Colors.white,
                              ),
                            ),
                            leading: SvgPicture.asset(
                              controller.icon[index],
                              colorFilter:
                                  controller.selectedIndex.value == index
                                      ? const ColorFilter.mode(
                                          Colors.amber, BlendMode.srcIn)
                                      : const ColorFilter.mode(
                                          Colors.white, BlendMode.srcATop),
                            ),
                          ),
                        );
                      },
                    )
                  : Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 50,
                              height: 200,
                              decoration: BoxDecoration(
                                color: MyColors.dark,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Divider(),
                            ),
                            Container(
                              width: 50,
                              height: 120,
                              decoration: BoxDecoration(
                                color: MyColors.dark,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          itemCount: controller.icons.length,
                          itemBuilder: (context, index) {
                            if (index == 4) {
                              return const Padding(
                                padding: EdgeInsets.symmetric(vertical: 32),
                                child: Divider(),
                              );
                            } else {
                              return Obx(
                                () => ListTile(
                                  splashColor: MyColors.backgrundColor,
                                  onTap: () =>
                                      controller.selectedIndex.value = index,
                                  title: SvgPicture.asset(
                                    controller.icons[index],
                                    colorFilter:
                                        controller.selectedIndex.value == index
                                            ? const ColorFilter.mode(
                                                Colors.amber, BlendMode.srcIn)
                                            : const ColorFilter.mode(
                                                Colors.white,
                                                BlendMode.srcATop),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
