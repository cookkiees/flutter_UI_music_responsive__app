import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaylistController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

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
