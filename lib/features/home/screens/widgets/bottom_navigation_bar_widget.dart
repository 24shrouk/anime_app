import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_icons.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> _icons = [
    AppIcons.homeIcon,
    AppIcons.animeIcone,
    AppIcons.searchIcon,
    AppIcons.communityIcon,
    AppIcons.settingIcon,
  ];

  final List<String> _labels = [
    "Home",
    "Animes",
    'search',
    "Community",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.whiteColor,
      currentIndex: _selectedIndex,

      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: List.generate(_icons.length, (index) {
        final isSelected = _selectedIndex == index;

        return BottomNavigationBarItem(
          label: _labels[index],
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isSelected ? AppColors.purple6F8Color : Colors.transparent,
            ),
            child: isSelected
                ? Row(
                    spacing: 3,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        _icons[index],
                        height: 16,
                        color: isSelected
                            ? Colors.white
                            : AppColors.greyDB5Color,
                      ),
                      Expanded(
                        child: AutoSizeText(
                          _labels[index],
                          style: AppStyles.font14SemiBold(
                            context,
                          ).copyWith(color: AppColors.whiteColor),
                          minFontSize: 10,
                        ),
                      ),
                    ],
                  )
                : SvgPicture.asset(
                    _icons[index],
                    height: 24,
                    color: isSelected ? Colors.white : AppColors.greyDB5Color,
                  ),
          ),
        );
      }),
    );
  }
}
