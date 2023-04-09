import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/config/size_config.dart';
import 'package:flutter_music_responsive_app/app/utils/my_colors.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'web_controller.dart';

class WebScaffold extends GetView<WebController> {
  const WebScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      body: Row(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: SizeConfig.screenWidth! * 0.07,
            child: ListView(
              children: [
                const SizedBox(height: 32),
                SvgPicture.asset(
                  "assets/icons/logo.svg",
                  height: 60,
                ),
                const SizedBox(height: 64),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 33,
                        child: Container(
                          width: 50,
                          height: 200,
                          decoration: BoxDecoration(
                              color: MyColors.dark,
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        bottom: 110,
                        child: Container(
                          width: 50,
                          height: 110,
                          decoration: BoxDecoration(
                              color: MyColors.dark,
                              borderRadius: BorderRadius.circular(32)),
                        ),
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
                                              Colors.white, BlendMode.srcATop),
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
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Obx(() {
                if (controller.selectedIndex.value == 0) {
                  return const Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  );
                } else if (controller.selectedIndex.value == 1) {
                  return const Text(
                    'Playlist',
                    style: TextStyle(color: Colors.white),
                  );
                } else if (controller.selectedIndex.value == 2) {
                  return const Text(
                    'Radio',
                    style: TextStyle(color: Colors.white),
                  );
                } else if (controller.selectedIndex.value == 3) {
                  return const Text(
                    'Videos',
                    style: TextStyle(color: Colors.white),
                  );
                } else if (controller.selectedIndex.value == 5) {
                  return const Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  );
                } else {
                  return const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}
