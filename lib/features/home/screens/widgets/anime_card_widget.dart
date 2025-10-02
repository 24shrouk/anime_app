import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class AnimeCardWidget extends StatelessWidget {
  const AnimeCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  });

  final String image;
  final String title;
  final String genre;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: 180,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColors.purple6F8Color,
                        size: 14,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        rating.toStringAsFixed(1),
                        style: AppStyles.font12SemiBold(
                          context,
                        ).copyWith(color: AppColors.blackE1EColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: AppStyles.font14Bold(
              context,
            ).copyWith(color: AppColors.blue537Color),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            genre,
            style: AppStyles.font12Medium(
              context,
            ).copyWith(color: AppColors.grey9A9Color),
          ),
        ],
      ),
    );
  }
}
