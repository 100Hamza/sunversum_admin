import 'package:flutter/material.dart';

import '../configuration/app_colors.dart';
import '../configuration/app_images.dart';

class CircularImage extends StatelessWidget {
  final double? size;
  final String imageUrl;
  final BoxBorder? border;
  final Widget? child;
  final AlignmentGeometry? alignment;
  const CircularImage(
      {Key? key,
      this.size,
      required this.imageUrl,
      this.border,
      this.child,
      this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      height: size,
      width: size,
      decoration: BoxDecoration(
      color: Colors.white,
          boxShadow:   const [
             BoxShadow(color: AppColors.kGreyColor, offset: Offset(0, 5) ,spreadRadius: 2, blurRadius: 8 ),
          ],
          border: border,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: FadeInImage(placeholder: const AssetImage(AppImages.successImg), image: NetworkImage(imageUrl)).image,
          ),
          shape: BoxShape.circle),
      child: child,
    );
  }
}
