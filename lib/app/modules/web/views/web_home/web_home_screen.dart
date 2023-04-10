import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/config/size_config.dart';
import 'package:get/get.dart';
import '../../../../components/card_currated_playlist_widget.dart';
import '../../../../components/recommendation_widget.dart';
import '../../../../components/title_widget.dart';
import '../../../../components/top_charts_widget.dart';
import '../../../../utils/my_colors.dart';
import '../../web_controller.dart';

class WebHomeScreen extends GetView<WebController> {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CardCurratedPlaylistWidget(),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget(
                        title: "Top charts",
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 420,
                        width: 600,
                        child: ListView.builder(
                          itemCount: controller.topCartsImages.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: TopChartsWidget(
                                images: controller.topCartsImages[index],
                                albums: controller.topCartsAlbums[index],
                                artist: controller.topCartsArtist[index],
                                durations: controller.topCartsDurations[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: TitleWidget(
                  title: "New Releases",
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.newReleasesImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: RecommendationWidget(
                        image: controller.newReleasesImages[index],
                        title: controller.newReleasesTitle[index],
                        artist: controller.newReleasesArtist[index],
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: TitleWidget(
                  title: "Popular in your area",
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.newReleasesImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: RecommendationWidget(
                        image: controller.newReleasesImages[index],
                        title: controller.newReleasesTitle[index],
                        artist: controller.newReleasesArtist[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 140)
            ],
          ),
        ),
      ),
    );
  }
}
