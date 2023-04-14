import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/main/main_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardCurratedPlaylistWidget extends GetView<MainController> {
  const CardCurratedPlaylistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width:
          controller.isPhone(context) ? MediaQuery.of(context).size.width : 800,
      decoration: BoxDecoration(
        color: const Color(0xFF609EAF),
        borderRadius: BorderRadius.circular(48),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 45,
            top: 38,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Currated playlist",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 85),
                Text(
                  "R & B Hits",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "All mine, Lie again, Petty call me everyday,\nOut of time, No love, Bad habit,\nand so much more",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 38,
            left: 45,
            child: CircleAvatar(),
          ),
          const Positioned(
            bottom: 38,
            left: 60,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
          ),
          const Positioned(
            bottom: 38,
            left: 75,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
          const Positioned(
            bottom: 38,
            left: 90,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
          const Positioned(
            bottom: 38,
            left: 105,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: 42,
            left: 165,
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/Heart.svg",
                  height: 28,
                ),
                const SizedBox(width: 8),
                const Text(
                  "33K Likes",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          controller.isPhone(context)
              ? const SizedBox()
              : Positioned(
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
    );
  }
}
