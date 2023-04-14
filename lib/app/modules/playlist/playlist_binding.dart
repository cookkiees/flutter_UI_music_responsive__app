import 'package:flutter_music_responsive_app/app/modules/playlist/playlist_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaylistController());
  }
}
