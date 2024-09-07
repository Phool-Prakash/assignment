import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textAlign,
      this.textStyle,
      this.textColor});
  final String text;
  final VoidCallback onPressed;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
            textAlign: textAlign ?? TextAlign.center,
            text,
            style: textStyle ??
                TextStyle(
                    color: textColor ?? Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)));
  }
}
