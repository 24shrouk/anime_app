import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AnimeImagesSection extends StatelessWidget {
  final String coverImage;
  final String characterImage;

  const AnimeImagesSection({
    super.key,
    required this.coverImage,
    required this.characterImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          coverImage,
          height: MediaQuery.of(context).size.height * 0.55,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        Positioned(
          bottom: -120,
          child: Image.asset(characterImage, height: 180),
        ),
      ],
    );
  }
}
