import 'package:get/get.dart';

class WebController extends GetxController {
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
}
