import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        color: const Color(0xfff7f7fa)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -262,
              left: -230,
              right: -150,
              child: Image.asset(
                "assets/images/sign_in_header.png",
                width: size.width,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*0.08, horizontal: size.width*0.05),
                child:// Hello
                Text(
                    "Hello",
                    style: const TextStyle(
                        color:  const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontStyle:  FontStyle.normal,
                        fontSize: 40.0
                    ),
                    textAlign: TextAlign.left
                ),
              )),
          child
        ],
      ),
    );
  }
}
