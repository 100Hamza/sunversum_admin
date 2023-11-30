import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimaryColor = Color(0xff5884DA);
  // static const Color kSecondaryColor = Color(0xff000000);
  static Color kShadowColor =   Colors.black.withOpacity(0.1);
  static const Color kGreyColor = Color(0xffC8C8C8);
  static const Color kActiveStatusColor = Color(0xff50D422);
  static const Color kCanceledStatusColor = Color(0xff5884DA);
  static const Color kStatusButtonBorderColor = Color(0xffE0E0E0);
  static const Color kTextFieldColor = Color(0xffF5F6F7);
  static const Color kDividerColor = Color(0xffE6EDF9);
  static const Color kNewListIconColor = Color(0xffF8E12E);
  static const Color kNewListArrowIconColor = Color(0xffDEDEDE);
}

/*

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
        colors: [
          AppColors.kBlackColor,
          AppColors.kPrimaryColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
  );
}*/
