import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../utils/my_colors.dart';

class PlayMusicWidget extends GetView<MainController> {
  const PlayMusicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: controller.isPhone(context) ? 96 : 130,
      decoration: const BoxDecoration(
        color: MyColors.backgrundColor,
      ),
      child: Container(
        padding: controller.isPhone(context)
            ? const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8)
            : const EdgeInsets.only(left: 100, top: 8, bottom: 8),
        child: Row(
          children: [
            if (controller.isPhone(context))
              Image.asset(
                "assets/images/Rectangle 14-5.png",
                height: 50,
              )
            else
              Image.asset("assets/images/Rectangle 14-5.png"),
            const SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Cancelled",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Quicksand",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Eminem",
                    style: TextStyle(
                      color: MyColors.defaultGrey,
                      fontSize: 14,
                      fontFamily: "Quicksand",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                if (controller.isPhone(context))
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Frame 7.svg",
                          height: 80,
                        ),
                        SvgPicture.asset(
                          "assets/icons/next.svg",
                          height: 24,
                        ),
                      ],
                    ),
                  )
                else
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: SvgPicture.asset(
                          "assets/icons/shuffle.svg",
                          height: 24,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/previous.svg",
                        height: 24,
                      ),
                      SvgPicture.asset(
                        "assets/icons/Frame 7.svg",
                        height: 90,
                      ),
                      SvgPicture.asset(
                        "assets/icons/next.svg",
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: SvgPicture.asset(
                          "assets/icons/repeate-one.svg",
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                if (controller.isPhone(context))
                  const SizedBox()
                else
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 15,
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(8),
                      lineHeight: 12,
                      percent: 0.5,
                      progressColor: Colors.amber,
                    ),
                  ),
              ],
            ),
            if (controller.isPhone(context))
              const SizedBox()
            else
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  SvgPicture.asset(
                    "assets/icons/volume-high.svg",
                    height: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 8,
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(8),
                      lineHeight: 6,
                      percent: 0.5,
                      progressColor: Colors.amber,
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
