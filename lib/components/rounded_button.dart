import 'package:flutter/material.dart';

import '../configuration/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final bool loading;
  const RoundedButton({
    Key? key,
    required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = AppColors.kPrimaryColor,
    this.loading = false,
    required this.onPressed, this.width = double.infinity, this.height = 47,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      disabledColor: const Color(0xff6D697A),
      minWidth: width,
      height: height,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        side: BorderSide(color: backgroundColor, width: 1),
      ),
      textColor: textColor,
      color: backgroundColor,
      elevation: 5,
      child: loading ? const Padding(
        padding: EdgeInsets.all(5.0),
        child: CircularProgressIndicator(color: Colors.white),
      ) : Text(text),
    );
  }
}
