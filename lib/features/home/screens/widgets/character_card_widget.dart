import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.image,
    required this.name,
    required this.des,
  });

  final String image;
  final String name;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: AppStyles.font16SemiBold(
              context,
            ).copyWith(color: AppColors.blue537Color),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            des,
            style: AppStyles.font14SemiBold(
              context,
            ).copyWith(color: AppColors.greyCACColor),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
