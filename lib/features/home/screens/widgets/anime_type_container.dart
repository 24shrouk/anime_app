import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class AnimeTypeContainer extends StatelessWidget {
  const AnimeTypeContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 9),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.25),
            offset: Offset(0, 4),

            blurRadius: 4,
          ),
        ],
        color: AppColors.grey9D9Color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Text(
        text,
        style: AppStyles.font11Medium(
          context,
        ).copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
