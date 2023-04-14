import 'package:flutter/material.dart';
import 'package:flutter_music_responsive_app/app/modules/home/home_controller.dart';
import 'package:get/get.dart';
import '../../components/card_currated_playlist_widget.dart';
import '../../components/title_widget.dart';
import '../main/main_controller.dart';
import 'widgets/newrealeses/new_realeses.dart';
import 'widgets/popular/popular.dart';
import '../../utils/my_colors.dart';
import 'widgets/topcharts/topcharts.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgrundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: controller.isPhone(context)
              ? const EdgeInsets.only(top: 16, right: 16, left: 16)
              : const EdgeInsets.only(top: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (controller.isPhone(context))
                const CardCurratedPlaylistWidget()
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardCurratedPlaylistWidget(),
                    const SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TitleWidget(
                          title: "Top charts",
                        ),
                        SizedBox(height: 8),
                        TopChartsPage(),
                      ],
                    )
                  ],
                ),
              if (controller.isPhone(context))
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TitleWidget(
                        title: "Top charts",
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TopChartsPage()
                    ],
                  ),
                )
              else
                const SizedBox(),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: TitleWidget(
                  title: "New Releases",
                ),
              ),
              const NewRealesespPage(),
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: TitleWidget(
                  title: "Popular in your area",
                ),
              ),
              const PopularPage(),
              const SizedBox(height: 140)
            ],
          ),
        ),
      ),
    );
  }
}
