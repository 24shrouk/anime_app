import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_icons.dart';
import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:anime_app/features/home/screens/widgets/anime_images_widget.dart';
import 'package:anime_app/features/home/screens/widgets/anime_type_container.dart';
import 'package:anime_app/features/home/screens/widgets/icon_and_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimeDetailsScreen extends StatelessWidget {
  const AnimeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.backroundImage,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                AnimeImagesSection(
                  coverImage: AppImages.animeImage,
                  characterImage: AppImages.animeLogoImage,
                ),
                SizedBox(height: 120),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimeTypeContainer(text: 'Dark Fantasy'),
                    AnimeTypeContainer(text: 'Action'),
                    AnimeTypeContainer(text: 'Adventure'),
                  ],
                ),
                SizedBox(height: 25),
                Divider(
                  color: AppColors.grey272Color,
                  indent: 30,
                  endIndent: 30,
                ),
                SizedBox(height: 10),
                Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconAndTextRowWidget(
                      text: '2.3M views',
                      icon: AppIcons.solidEyeIcon,
                    ),

                    IconAndTextRowWidget(
                      text: '2K clap',
                      icon: AppIcons.handClappingIcon,
                    ),

                    IconAndTextRowWidget(
                      text: ' 4 Seasons',
                      icon: AppIcons.maskGroupIcon,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  color: AppColors.grey272Color,
                  indent: 30,
                  endIndent: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10,
                  ),
                  child: Row(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppIcons.fireIcon),
                      Expanded(
                        child: Text(
                          'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                          style: AppStyles.font14Medium(
                            context,
                          ).copyWith(color: Color(0xffCBC4C4)),
                          softWrap: true,
                          maxLines: null,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(18),
        color: AppColors.blue537Color,
        child: Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37),
                color: AppColors.grey272Color.withOpacity(0.4),
              ),
              child: IconAndTextRowWidget(
                text: ' preview',
                icon: AppIcons.previewIcon,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37),
                color: AppColors.purple6F8Color,
              ),
              child: IconAndTextRowWidget(
                text: ' Watch Now',
                icon: AppIcons.solidEyeIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
