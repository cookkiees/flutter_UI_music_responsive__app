import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController
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

  final GlobalKey<ScaffoldState> scaffoldKeyDrawer = GlobalKey<ScaffoldState>();

  var isEndDrawerOpen = false.obs;

  void openEndDrawerPage() {
    scaffoldKeyDrawer.currentState?.openEndDrawer();
  }

  List<String> icons = [
    "assets/icons/Home.svg",
    "assets/icons/playlist.svg",
    "assets/icons/radio.svg",
    "assets/icons/videos.svg",
    "assets/icons/profile.svg",
    "assets/icons/profile.svg",
    "assets/icons/Logout.svg",
  ];
  List<String> icon = [
    "assets/icons/Home.svg",
    "assets/icons/playlist.svg",
    "assets/icons/radio.svg",
    "assets/icons/videos.svg",
    "assets/icons/profile.svg",
    "assets/icons/Logout.svg",
  ];
  List<String> title = [
    "Home",
    "Paylist",
    "Radio",
    "Music Videos",
    "Profile",
    "Logout",
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
