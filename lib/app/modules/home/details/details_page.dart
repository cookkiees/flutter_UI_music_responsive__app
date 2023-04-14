import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/home/home_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/my_colors.dart';

class DetailsPage extends GetView<HomeController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Lead.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: MyColors.dark.withOpacity(0.5),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                  child: SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Lead.png",
                          width: 300,
                          height: 300,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 100),
                              const Text(
                                "Tomorrow's tunes",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Color(0xFFA4C7C6),
                                    fontWeight: FontWeight.w800),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, \npurus sit amet luctus venenatis",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white54,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              const Text(
                                "64 songs ~ 16 hrs+",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white54,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 32.0),
                                child: SizedBox(
                                  height: 40,
                                  width: 350,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/icons/Play.svg"),
                                            const SizedBox(width: 8),
                                            const Text(
                                              "Play all",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          decoration: BoxDecoration(
                                            color: Colors.white12,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  "assets/icons/music-square-add.svg"),
                                              const SizedBox(width: 8),
                                              const Text(
                                                "Add to Playlist",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          borderRadius:
                                              BorderRadius.circular(24),
                                        ),
                                        child: SvgPicture.asset(
                                            "assets/icons/Heart.svg"),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.newReleasesImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 32),
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.only(top: 8, left: 12),
                          decoration: BoxDecoration(
                            color: MyColors.backgrundColor.withOpacity(0.80),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Table(
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          controller.newReleasesImages[index],
                                          width: 35,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(width: 32),
                                        SvgPicture.asset(
                                            "assets/icons/Heart.svg")
                                      ],
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.newReleasesTitle[index],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.newReleasesArtist[index],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        controller.time[index],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
