import 'package:flutter/material.dart';
import '../../../../configuration/app_colors.dart';

class RounderBorderButton extends StatelessWidget {

  final VoidCallback onPressed;
  Color borderColor , textColor , bgColor;
  final String title;
  double height;
  bool isElevation;
  RounderBorderButton(
      {Key? key,
        required this.onPressed,
        this.borderColor = AppColors.kPrimaryColor,
        this.textColor = AppColors.kPrimaryColor,
        this.bgColor = Colors.white,
        this.height = 47,
        this.isElevation = false,
        required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: borderColor),
            boxShadow: isElevation? null : [
              BoxShadow(
                color: const Color(0xff4263A4).withOpacity(0.32),
                blurRadius: 4,
                offset: const Offset(1, 1),
              )
            ]
        ),
        child: Text(
          title,
          style:  TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,

          ),
        ),
      ),
    );
  }
}
