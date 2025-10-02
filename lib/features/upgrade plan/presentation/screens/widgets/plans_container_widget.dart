import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/core/constants/app_styles.dart';
import 'package:anime_app/features/upgrade%20plan/presentation/screens/widgets/selected_widget.dart';
import 'package:flutter/material.dart';

class PlansContainerWidgets extends StatefulWidget {
  const PlansContainerWidgets({
    super.key,
    required this.text1,
    required this.text2,
    required this.color,
    required this.image,
    required this.checkColor,
    required this.textColor,
  });
  final String text1;
  final String text2;
  final Color color;
  final String image;
  final Color checkColor;
  final Color textColor;

  @override
  State<PlansContainerWidgets> createState() => _PlansContainerWidgetsState();
}

class _PlansContainerWidgetsState extends State<PlansContainerWidgets> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, right: 14),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.image),
          RichText(
            text: TextSpan(
              text: widget.text1,
              style: AppStyles.font14Bold(
                context,
              ).copyWith(color: widget.textColor),
              children: [
                TextSpan(
                  text: widget.text2,
                  style: AppStyles.font12Bold(
                    context,
                  ).copyWith(color: AppColors.purpuleAD8Color.withOpacity(0.7)),
                ),
              ],
            ),
          ),

          CheckSelectecWidget(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            isNowSelected: isSelected,
            color: widget.checkColor,
          ),
        ],
      ),
    );
  }
}
