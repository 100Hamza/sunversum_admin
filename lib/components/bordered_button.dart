import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';


class BorderedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final IconData icon;
  const BorderedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.height = 64,
      this.width = double.infinity,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(width, height),
        ),
        side: const MaterialStatePropertyAll(
          BorderSide(color: AppColors.kGreyColor),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  color: AppColors.kGreyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Icon(
            icon,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
