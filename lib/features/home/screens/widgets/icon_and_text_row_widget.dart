import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconAndTextRowWidget extends StatelessWidget {
  const IconAndTextRowWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        SvgPicture.asset(icon),
        Text(
          text,
          style: AppStyles.font13Regular(
            context,
          ).copyWith(color: AppColors.whiteColor),
        ),
      ],
    );
  }
}
