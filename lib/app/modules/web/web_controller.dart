import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebController extends GetxController
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

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  List<String> icons = [
    "assets/icons/Home.svg",
    "assets/icons/Playlist.svg",
    "assets/icons/Radio.svg",
    "assets/icons/Videos.svg",
    "assets/icons/Profile.svg",
    "assets/icons/Profile.svg",
    "assets/icons/Logout.svg",
  ];

// TOP CHARTS

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
}
