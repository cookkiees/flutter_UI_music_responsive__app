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
      child: Stack(
        children: [
          Image.asset(
            image,
            height: 200,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 32,
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: "Quicksand", fontSize: 16, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              artist,
              style: const TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16,
                  color: MyColors.defaultGrey),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                minimumSize: const Size(288, 210),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.all(0)),
            onPressed: () {},
            child: null,
          )
        ],
      ),
    );
  }
}
