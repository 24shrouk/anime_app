import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.starColor, AppColors.whiteColor],
          stops: [0.2, 1.0],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -95,
            right: -150,
            child: Image.asset(
              AppImages.leftStarImage,
              scale: 0.7,
              color: const Color.fromARGB(255, 202, 205, 253),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
