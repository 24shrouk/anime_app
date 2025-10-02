import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:anime_app/features/home/screens/widgets/anime_list_view.dart';
import 'package:anime_app/features/home/screens/widgets/bottom_navigation_bar_widget.dart';
import 'package:anime_app/features/home/screens/widgets/category_list_view.dart';
import 'package:anime_app/features/home/screens/widgets/character_list_view.dart';
import 'package:anime_app/features/home/screens/widgets/gradient_background_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Where Anime Comes Alive",
                  style: AppStyles.font24Bold(
                    context,
                  ).copyWith(color: AppColors.blue537Color),
                ),
                SizedBox(height: 30),
                CategoryListView(),
                SizedBox(height: 30),
                AnimeListView(),
                SizedBox(height: 24),
                Text(
                  " Top Characters",
                  style: AppStyles.font24Bold(
                    context,
                  ).copyWith(color: AppColors.blue537Color),
                ),
                SizedBox(height: 24),
                CharacterListView(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
