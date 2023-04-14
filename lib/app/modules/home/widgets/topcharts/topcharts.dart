import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/home/home_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/my_colors.dart';

class TopChartsPage extends GetView<HomeController> {
  const TopChartsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      width: controller.isPhone(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 3,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: controller.isPhone(context)
            ? const NeverScrollableScrollPhysics()
            : null,
        itemCount: controller.topCartsImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                      color: MyColors.dark,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Image.asset(
                    controller.topCartsImages[index],
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  left: 116,
                  top: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.topCartsAlbums[index],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          controller.topCartsArtist[index],
                          style: const TextStyle(
                            color: MyColors.defaultGrey,
                          ),
                        ),
                      ),
                      Text(
                        controller.topCartsDurations[index],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 36,
                  right: 21,
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: MyColors.defaultGrey,
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart-1.svg",
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      minimumSize: Size(MediaQuery.of(context).size.width, 120),
                      backgroundColor: Colors.transparent,
                      elevation: 0),
                  onPressed: () {},
                  child: null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
