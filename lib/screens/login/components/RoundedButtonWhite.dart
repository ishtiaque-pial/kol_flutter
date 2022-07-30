import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kol_flutter/constants.dart';

class RoundedButtonWhite extends StatelessWidget {
  final String btnName;
  final VoidCallback  onPressed;
  const RoundedButtonWhite({
    Key? key, required this.btnName, required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
                color: const Color(0x1a455b63),
                offset: Offset(0, 6),
                blurRadius: 6,
                spreadRadius: 0)
          ],
          color: const Color(0xffffffff)),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child:
            SvgPicture.asset("assets/icons/btn_green_part_1.svg"),
          ),
          Positioned(
            top: 0,
            right: 0,
            child:
            SvgPicture.asset("assets/icons/btn_green_part_2.svg"),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child:
            SvgPicture.asset("assets/icons/btn_green_part_3.svg"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child:
            SvgPicture.asset("assets/icons/btn_green_part_4.svg"),
          ),
          Center(
            child: // CONTINUE
            TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                    primary: kPrimaryDarkColor,
                    minimumSize: Size.fromWidth(double.infinity),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: Text("CONTINUE",
                    style: const TextStyle(
                        color: const Color(0xff449aa3),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.center)),
          )
        ],
      ),
    );
  }
}