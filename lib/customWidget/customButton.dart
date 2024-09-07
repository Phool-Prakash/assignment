import 'package:flutter/material.dart';

class CustomButtonChe extends StatefulWidget {
  const CustomButtonChe({
    super.key,
    required this.onPressed,
    required this.text,
    this.bWidth,
    this.bHeight,
    this.textSize,
    this.color1,
    this.color2,
    this.color3,
    this.textColor,
    this.padding,
    this.textStyle,
    this.boxDecoration,
    this.boxShadow,
  });

  final VoidCallback onPressed;
  final String text;
  final double? bWidth, bHeight, textSize;
  final Color? color1, color2, color3, textColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final BoxDecoration? boxDecoration;
  final BoxShadow? boxShadow;

  @override
  State<CustomButtonChe> createState() => _CustomButtonCheState();
}

class _CustomButtonCheState extends State<CustomButtonChe> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.bWidth ?? MediaQuery.of(context).size.width * 0.60,
        height: widget.bHeight,
        decoration: widget.boxDecoration ??
            BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    widget.color1 ?? Colors.white,
                    widget.color2 ?? const Color(0xFFF44336),
                  ]),
            ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          child: Text(
            widget.text,
            style: widget.textStyle ??
                TextStyle(
                    color: Colors.white,
                    fontSize: widget.textSize ?? 15,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.bold),
          ),
        ));
  }
}
