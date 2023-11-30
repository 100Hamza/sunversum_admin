import 'package:flutter/material.dart';

import '../configuration/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double verticalPadding;
  final double horizontalPadding;
  const CustomTextButton({Key? key, required this.title, required this.onPressed, this.horizontalPadding = 2, this.verticalPadding = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        child: Text(title,
          style: const TextStyle(color: AppColors.kPrimaryColor),
        ),
      ),
    );
  }
}
