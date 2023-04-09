import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/web/views/web_home/web_home_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../config/size_config.dart';
import '../../utils/my_colors.dart';
import 'web_controller.dart';

class WebScreen extends GetView<WebController> {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      appBar: AppBar(
        elevation: 0,
        primary: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        leadingWidth: 85,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, top: 24),
          child: SvgPicture.asset(
            "assets/icons/logo.svg",
            height: 30,
          ),
        ),
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: TextFormField(
              style: const TextStyle(fontSize: 18, color: Colors.white),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(24),
                filled: true,
                fillColor: Colors.transparent,
                hintText: "Search..",
                hintStyle: TextStyle(color: MyColors.defaultGrey, fontSize: 18),
                prefixIconConstraints: BoxConstraints(minWidth: 60),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: Icon(
                    Icons.search,
                    color: MyColors.defaultGrey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      32,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Row(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: SizeConfig.screenWidth! * 0.07,
            child: ListView(
              children: [
                const SizedBox(height: 64),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Stack(
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
          Expanded(
            child: Center(
              child: Obx(() {
                if (controller.selectedIndex.value == 0) {
                  return const WebHomeScreen();
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
