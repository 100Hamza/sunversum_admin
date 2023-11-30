import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_theme.dart';


import '../../../../configuration/app_colors.dart';

class ProfileToggleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String title;
  const ProfileToggleButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: AppColors.kPrimaryColor),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff4263A4).withOpacity(0.32),
                blurRadius: 4,
                offset: const Offset(1, 1),
              )
            ]),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: AppColors.kPrimaryColor,
            ),
            8.sW,
            Text(
              title,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
