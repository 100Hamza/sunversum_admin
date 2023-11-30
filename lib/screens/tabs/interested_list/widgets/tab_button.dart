import 'package:flutter/material.dart';

import '../../../../configuration/app_colors.dart';

class TabButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool selected;
  const TabButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(
            color: selected ? AppColors.kPrimaryColor : const Color(0xffB2B2B2),
            fontSize: 12,
            fontWeight: selected ? FontWeight.bold : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
