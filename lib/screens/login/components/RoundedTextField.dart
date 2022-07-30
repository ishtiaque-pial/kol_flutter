import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'TextFieldContainer.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final String iconUrl;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool obscureText;

  const RoundedTextField({
    Key? key,
    required this.hintText,
    required this.iconUrl,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: const Color(0xffb4bbc9),
                fontWeight: FontWeight.w300,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 15.0),
            icon: SvgPicture.asset(iconUrl),
            border: InputBorder.none),
        onChanged: onChanged,
        keyboardType: keyboardType,
      ),
    );
  }
}
