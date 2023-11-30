import 'package:flutter/material.dart';
import 'package:sunversum_admin/configuration/app_colors.dart';


class ElevatedContainer extends StatelessWidget {
  final double elevation;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final Offset? offset;
  Alignment boxAlignment;
  ElevatedContainer({Key? key, this.elevation = 8, required this.child, this.padding, this.width, this.height, this.offset , this.boxAlignment = Alignment.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: boxAlignment,
      height: height,
      width: width,
      padding: padding ?? const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: offset ?? const Offset(2, 2),
            blurRadius: elevation,
            color: AppColors.kShadowColor
          )
        ]
      ),
      child: child,
    );
  }
}
