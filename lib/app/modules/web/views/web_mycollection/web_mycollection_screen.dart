import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/web/web_controller.dart';
import 'package:flutter_music_responsive_app/app/utils/my_colors.dart';
import 'package:get/get.dart';

class WebMyCollectionScreen extends GetView<WebController> {
  const WebMyCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultTabController(
            length: 2,
            child: SizedBox(
              width: 350,
              height: 50,
              child: TabBar(
                controller: controller.tabController,
                physics: const NeverScrollableScrollPhysics(),
                splashBorderRadius: const BorderRadius.all(Radius.circular(32)),
                labelStyle: const TextStyle(fontSize: 16),
                indicatorPadding:
                    const EdgeInsets.only(bottom: 2, left: 16, right: 16),
                unselectedLabelColor: MyColors.defaultGrey,
                labelColor: MyColors.dark,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                tabs: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32),
                      ),
                      border: Border.all(color: MyColors.defaultGrey),
                    ),
                    child: const Tab(text: "My Collection"),
                  ),
                  Container(
                    width: 200,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32),
                      ),
                      border: Border.all(color: MyColors.defaultGrey),
                    ),
                    child: const Tab(text: "Likes"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  children: List.generate(
                      controller.newReleasesImages.length,
                      (index) => SizedBox(
                            height: 280,
                            width: 280,
                            child: Stack(
                              children: [
                                Image.asset(
                                  controller.newReleasesImages[index],
                                  height: 280,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  bottom: 64,
                                  left: 32,
                                  child: Text(
                                    controller.newReleasesTitle[index],
                                    style: const TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 32,
                                  left: 32,
                                  child: Text(
                                    controller.newReleasesArtist[index],
                                    style: const TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 18,
                                      color: MyColors.dark,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      minimumSize: const Size(288, 288),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(49),
                                      ),
                                      padding: const EdgeInsets.all(0)),
                                  onPressed: () {},
                                  child: null,
                                )
                              ],
                            ),
                          )),
                ),
                const Center(
                  child: Text(
                    "Likes",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
