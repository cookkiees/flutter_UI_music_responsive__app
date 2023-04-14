import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

import '../../../../components/recommendation_widget.dart';
import '../../../../config/size_config.dart';

class PopularPage extends GetView<HomeController> {
  const PopularPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.newReleasesImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: controller.isPhone(context)
                ? const EdgeInsets.symmetric(horizontal: 0)
                : const EdgeInsets.symmetric(horizontal: 32),
            child: RecommendationWidget(
              image: controller.newReleasesImages[index],
              title: controller.newReleasesTitle[index],
              artist: controller.newReleasesArtist[index],
            ),
          );
        },
      ),
    );
  }
}
