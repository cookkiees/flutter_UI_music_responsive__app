import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/card_currated_playlist_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32),
        child: Column(
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
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
