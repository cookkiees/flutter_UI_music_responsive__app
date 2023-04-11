import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/web/web_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/my_colors.dart';

class TopChartsWidget extends GetView<WebController> {
  const TopChartsWidget({
    super.key,
    required this.images,
    required this.albums,
    required this.artist,
    required this.durations,
  });
  final String images;
  final String albums;
  final String artist;
  final String durations;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 110,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(
              color: MyColors.dark, borderRadius: BorderRadius.circular(16)),
        ),
        Positioned(
          left: 16,
          top: 16,
          child: Image.asset(
            images,
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
                albums,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  artist,
                  style: const TextStyle(
                    color: MyColors.defaultGrey,
                  ),
                ),
              ),
              Text(
                durations,
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
          onPressed: () => controller.selectedIndex.value = 6,
          child: null,
        ),
      ],
    );
  }
}
