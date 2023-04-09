import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../web_controller.dart';

class MainScreen extends GetView<WebController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 7,
            child: ListView(
              children: [
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Purr\'',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' Coffee',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 89),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    itemCount: controller.icons.length,
                    itemBuilder: (context, index) {
                      if (index == 4) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: Divider(),
                        );
                      } else {
                        return Obx(
                            () => SvgPicture.asset(controller.icons[index]));
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 235,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(right: 0, left: 16),
                  leading: SvgPicture.asset("assets/icons/log-in.svg"),
                  title: const Text(
                    "Log out",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Obx(() {
                if (controller.selectedIndex.value == 0) {
                  return const Text("home");
                } else if (controller.selectedIndex.value == 1) {
                  return const Text('Menu');
                } else if (controller.selectedIndex.value == 2) {
                  return const Text('My Orders');
                } else if (controller.selectedIndex.value == 3) {
                  return const Text('My Orders');
                } else if (controller.selectedIndex.value == 4) {
                  return const Text("History");
                } else if (controller.selectedIndex.value == 5) {
                  return const Text("Partners");
                } else if (controller.selectedIndex.value == 6) {
                  return const Text("Settings");
                } else {
                  return const Text("Donate to shelter");
                }
              }),
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
        ],
      ),
    );
  }
}
