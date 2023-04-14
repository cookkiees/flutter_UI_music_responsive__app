import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> topCartsImages = [
    "assets/images/Rectangle 17.png",
    "assets/images/Rectangle 17-1.png",
    "assets/images/Rectangle 17-2.png",
  ];
  List<String> topCartsAlbums = [
    "Golden age of 80s",
    "Reggae “n” blues",
    "Tomorrow’s tunes",
  ];
  List<String> topCartsArtist = [
    "Sean swadder",
    "Dj YK mule",
    "Obi Datti",
  ];
  List<String> topCartsDurations = [
    "2:34:45",
    "1:02:42",
    "2:01:25",
  ];

  // NEW RELEASES

  List<String> newReleasesImages = [
    "assets/images/Rectangle 14-1.png",
    "assets/images/Rectangle 14-2.png",
    "assets/images/Rectangle 14-3.png",
    "assets/images/Rectangle 14-4.png",
    "assets/images/Rectangle 14-5.png",
    "assets/images/Rectangle 14.png",
    "assets/images/Rectangle 14-6.png",
  ];
  List<String> newReleasesTitle = [
    "Life in a bubble",
    "Mountain",
    "Limits",
    "Everything’s black",
    "Cancelled",
    "Nomad",
    "Blind",
  ];
  List<String> newReleasesArtist = [
    "The van",
    "Krisx",
    "John Dillion",
    "Ameed",
    "Enimen",
    "Makrol eli",
    "Wiz zee",
  ];

  List<String> time = [
    "4:12",
    "3:00",
    "2.57",
    "3:12",
    "2:33",
    "4:22",
    "3:21",
  ];

  int tinyHeightLimit = 100;
  int tinyLimit = 270;
  int phoneLimit = 550;
  int tabletLimit = 800;
  int largeTabletLimit = 1100;

  bool isTinyheightLimit(BuildContext context) =>
      MediaQuery.of(context).size.height.obs < tinyHeightLimit;

  bool isTinyLimit(BuildContext context) =>
      MediaQuery.of(context).size.width.obs < tinyLimit;

  bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width.obs < phoneLimit &&
      MediaQuery.of(context).size.width.obs >= tinyLimit;

  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width.obs < tabletLimit &&
      MediaQuery.of(context).size.width.obs >= phoneLimit;

  bool isLargeTablet(BuildContext context) =>
      MediaQuery.of(context).size.width.obs >= largeTabletLimit;

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width.obs >= largeTabletLimit;
}
