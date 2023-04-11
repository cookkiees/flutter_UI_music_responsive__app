import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../config/size_config.dart';
import '../utils/my_colors.dart';

class PlayMusicWidget extends StatelessWidget {
  const PlayMusicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MyColors.defaultGrey.withOpacity(0.01),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(1, 3),
          ),
        ],
      ),
      child: ClipRRect(
        child: BackdropFilter(
          blendMode: BlendMode.srcIn,
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: const EdgeInsets.only(left: 100, top: 8, bottom: 8),
            color: MyColors.defaultGrey.withOpacity(0.2),
            child: Row(
              children: [
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
                    SizedBox(
                      width: 900,
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
                const SizedBox(
                  width: 60,
                ),
                SvgPicture.asset(
                  "assets/icons/volume-high.svg",
                  height: 24,
                ),
                SizedBox(
                  width: 200,
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(8),
                    lineHeight: 6,
                    percent: 0.5,
                    progressColor: Colors.amber,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
