import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol_flutter/constants.dart';
import 'package:kol_flutter/screens/login/components/Background.dart';

import 'CustomText.dart';
import 'RoundedButtonWhite.dart';
import 'RoundedTextField.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // bg
            RoundedTextField(
              hintText: "Phone Number",
              iconUrl: "assets/icons/phone_call.svg",
              keyboardType: TextInputType.number,
              onChanged: (value) {},
            ),
            SizedBox(height: 28),

            RoundedTextField(
              hintText: "Password",
              iconUrl: "assets/icons/password.svg",
              obscureText: true,
              keyboardType: TextInputType.text,
              onChanged: (value) {},
            ),
            SizedBox(height: 28),

            CustomText(
              text: "FORGOT PASSWORD",
              color: Color(0xffb4bbc9),
              opacity:  0.6000000238418579,
            ),

            SizedBox(height: 60),

            RoundedButtonWhite(
              btnName: "CONTINUE",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}


