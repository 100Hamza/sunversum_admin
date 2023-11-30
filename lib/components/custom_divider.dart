import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';


class CustomDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double thickness;
  const CustomDivider({Key? key, this.height = 32, this.color = AppColors.kDividerColor, this.thickness = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
      thickness: thickness,
    );
  }
}
