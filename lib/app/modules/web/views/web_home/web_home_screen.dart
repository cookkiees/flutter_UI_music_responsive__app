import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../utils/my_colors.dart';
import '../../web_controller.dart';

class WebHomeScreen extends GetView<WebController> {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 450,
                  width: 800,
                  decoration: BoxDecoration(
                    color: const Color(0xFF609EAF),
                    borderRadius: BorderRadius.circular(48),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/eric-esma.png",
                          fit: BoxFit.fill,
                          height: 450,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
