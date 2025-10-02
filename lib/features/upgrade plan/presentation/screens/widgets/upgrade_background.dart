import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class UpGradePlanBackground extends StatelessWidget {
  final Widget child;
  const UpGradePlanBackground({super.key, required this.child});

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
            top: -115,
            left: -150,
            child: Image.asset(
              AppImages.rightStarImage,
              scale: 0.95,
              color: const Color.fromARGB(255, 202, 205, 253),
            ),
          ),
          Positioned(
            top: 220,
            right: -160,
            child: Image.asset(
              AppImages.leftStarImage,
              scale: 0.9,
              color: const Color.fromARGB(255, 202, 205, 253),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
