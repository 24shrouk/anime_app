import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle font24Bold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font22Bold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font14Bold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font12Bold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font16Bold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle font12Medium(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font14Medium(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font11Medium(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font13Regular(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font12SemiBold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font16SemiBold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle font14SemiBold(BuildContext context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
    );
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;
    final double lowerFont = fontSize * .8;
    final double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 1300) {
      return width / 1100;
    } else {
      return width / 1500;
    }
  }
}
