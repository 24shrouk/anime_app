import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CheckSelectecWidget extends StatefulWidget {
  const CheckSelectecWidget({
    super.key,
    required this.onTap,
    this.isNowSelected = false,
    required this.color,
  });
  final Function() onTap;

  final bool isNowSelected;
  final Color color;

  @override
  State<CheckSelectecWidget> createState() => _CheckSelectecWidgetState();
}

class _CheckSelectecWidgetState extends State<CheckSelectecWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: (widget.isNowSelected
              ? AppColors.purple6F8Color
              : Colors.transparent),
          border: Border.all(
            color: widget.isNowSelected
                ? AppColors.purple6F8Color
                : widget.color,
          ),
        ),
        child: widget.isNowSelected == true
            ? Icon(Icons.check, color: AppColors.blue537Color)
            : SizedBox(width: 25, height: 25),
      ),
    );
  }
}
