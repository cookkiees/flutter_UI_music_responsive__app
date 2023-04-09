import 'package:get/get.dart';

class MobileController extends GetxController {
  var selectedIndex = 0.obs;

  List<String> icons = [
    "assets/icons/playlist.svg",
    "assets/icons/playlist.svg",
    "assets/icons/radio.svg",
    "assets/icons/videos.svg",
    "assets/icons/profile.svg",
    "assets/icons/Logout.svg",
  ];

  List<String> title = [
    "Home",
    "My Collections",
    "Radio",
    "Videos",
    "Profile",
    "Logout",
  ];
}
