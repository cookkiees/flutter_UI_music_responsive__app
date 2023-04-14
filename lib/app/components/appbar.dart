import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/my_colors.dart';

class MyAppbar extends GetView<MainController> {
  const MyAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      primary: false,
      backgroundColor: Colors.transparent,
      toolbarHeight: 100,
      leadingWidth: controller.isPhone(context) ? 56 : 85,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24, top: 24),
        child: SvgPicture.asset(
          "assets/icons/logo.svg",
          height: 30,
        ),
      ),
      flexibleSpace: controller.isPhone(context)
          ? const SizedBox()
          : Align(
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
                    hintStyle:
                        TextStyle(color: MyColors.defaultGrey, fontSize: 18),
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
      actions: [
        if (controller.isPhone(context))
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 24),
                child: IconButton(
                    onPressed: () {
                      controller.openEndDrawerPage();
                    },
                    icon: SvgPicture.asset("assets/icons/menu 1.svg")),
              )
            ],
          )
      ],
    );
  }
}
