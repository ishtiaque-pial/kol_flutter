import 'package:flutter/material.dart';
import 'package:kol_flutter/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final FontStyle fontStyle;
  final double opacity;

  const CustomText({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 12.0,
    this.fontStyle = FontStyle.normal,  this.opacity=1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      // FORGOT PASSWORD
      opacity: opacity,
      child: Text(text,
          style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontFamily: "Poppins",
              fontStyle: fontStyle,
              fontSize: fontSize)),
    );
  }
}