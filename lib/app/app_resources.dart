import 'dart:core';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppIcons {
  AppIcons._();

  static const IconData exit = Icons.exit_to_app;
  static const IconData cameraFront = Icons.camera_front;
  static const IconData cameraRear = Icons.camera_rear;
  static const IconData formatQuote = Icons.format_quote;
  static const IconData imageIcon = Icons.image;
  static const IconData option = Icons.more_vert;
  static const IconData plus = Icons.add;
}

class AppFonts {
  AppFonts._();

  static String fontFamily = 'Roboto';
}

class AppFontSizes {
  AppFontSizes._();

  static const double small = 14.0;
  static const double medium = 16.0;
  static const double large = 18.0;
}

class AppTextStyles {
  AppTextStyles._();
  // Font regular
  static TextStyle regularTextStyle(
          {double? fontSize, Color? color, double? height}) =>
      TextStyle(
          fontFamily: AppFonts.fontFamily,
          fontWeight: FontWeight.w300,
          fontSize: fontSize ?? AppFontSizes.medium,
          color: color ?? AppColors.black,
          height: height);

  // Font medium
  static TextStyle mediumTextStyle(
          {double? fontSize, Color? color, double? height}) =>
      TextStyle(
          fontFamily: AppFonts.fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? AppFontSizes.medium,
          color: color ?? AppColors.black,
          height: height);

  // Font bold
  static TextStyle boldTextStyle(
          {double? fontSize, Color? color, double? height}) =>
      TextStyle(
          fontFamily: AppFonts.fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: fontSize ?? AppFontSizes.medium,
          color: color ?? AppColors.black,
          height: height);
}

class AppColors {
  AppColors._();

  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static const Color yellow = Colors.yellow;
  static const Color green = Colors.green;
  static const Color blue = Colors.blue;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color transparent = Colors.transparent;
}

class AppImages {
  AppImages._();

  static const String illustrator = "assets/images/illustrator.jpg";
}

class AppStrings {
  AppStrings._();

  /* static const String early_p_def = "Early_P_Def";
  static const String healthy_p = "Healthy_P ";
  static const String late_p_def = "Late_P_Def";
  static const String prog_p_def = "Prog_P_Def"; */
  static const String healty = "Healthy_P";
  static const String phase1 = "Early_P_Def";
  static const String phase2 = "Late_P_Def";
  static const String phase3 = "Prog_P_Def";
  static const String unknow = "Unknow_P";
  static const String dontShake = "Don\'t Shake your mobile phone";
  static const String pickFromGallery = "Pick Image from gallery";

  static const String noFoundCamera = 'Looks like there are no cameras';
  static const String liveCamera = "Live Camera";
  static const String fromGallery = "From Gallery";
}
