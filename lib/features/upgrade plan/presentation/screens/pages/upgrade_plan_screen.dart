import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_icons.dart';
import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:anime_app/features/upgrade%20plan/presentation/screens/widgets/plans_container_widget.dart';
import 'package:anime_app/features/upgrade%20plan/presentation/screens/widgets/selected_widget.dart';
import 'package:anime_app/features/upgrade%20plan/presentation/screens/widgets/upgrade_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UpGradePlanBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 14),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Text(
                        'Upgrade Plan',
                        style: AppStyles.font22Bold(
                          context,
                        ).copyWith(color: AppColors.blue537Color),
                      ),
                      SvgPicture.asset(AppIcons.closeIcon),
                    ],
                  ),
                  SizedBox(height: 10),
                  Image.asset(AppImages.rocketImage, scale: 0.8),
                  SizedBox(height: 15),
                  Text(
                    'Seamless Anime \nExperience, Ad-Free.',
                    style: AppStyles.font24Bold(
                      context,
                    ).copyWith(color: AppColors.blue537Color),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Enjoy unlimited anime streaming without \n                         interruptions.',
                    style: AppStyles.font14Medium(
                      context,
                    ).copyWith(color: AppColors.greyDB5Color),
                  ),
                  SizedBox(height: 12),
                  PlansContainerWidgets(
                    text1: 'Monthly\n\$5 USD',
                    text2: '/Month\nInclude Family Sharing',
                    checkColor: AppColors.purple6F8Color,
                    image: AppImages.watchImage,
                    color: AppColors.blue537Color,
                    textColor: AppColors.whiteColor,
                  ),
                  PlansContainerWidgets(
                    text1: 'Annually\n\$50 USD',
                    text2: '/Month\nInclude Family Sharing',
                    checkColor: AppColors.purple6F8Color,
                    image: AppImages.watchImage,
                    color: AppColors.whiteColor,
                    textColor: AppColors.blue537Color,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 37),
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.purple6F8Color,
                    ),
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: AppStyles.font16Bold(
                        context,
                      ).copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
