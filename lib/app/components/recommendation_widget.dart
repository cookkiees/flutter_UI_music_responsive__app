import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    super.key,
    required this.image,
    required this.title,
    required this.artist,
  });

  final String image;
  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 200,
      width: 201,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 200,
            fit: BoxFit.fill,
          ),
          Text(
            title,
            style: const TextStyle(
                fontFamily: "Quicksand", fontSize: 16, color: Colors.white),
          ),
          Text(
            artist,
            style: const TextStyle(
                fontFamily: "Quicksand",
                fontSize: 16,
                color: MyColors.defaultGrey),
          ),
        ],
      ),
    );
  }
}
