import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({
    Key? key, required this.child,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              bottom: -250,
              right: -120,
              child: Image.asset("assets/images/ic_splash_bottom.png")),
          child
        ],
      ),
    );
  }
}