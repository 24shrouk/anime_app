import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryContainerWidget extends StatelessWidget {
  const CategoryContainerWidget({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });
  final String text;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSelected ? AppColors.purple6F8Color : AppColors.whiteColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: AppStyles.font14Bold(context).copyWith(
              color: isSelected
                  ? AppColors.whiteColor
                  : AppColors.purple6F8Color,
            ),
          ),
        ),
      ),
    );
  }
}
