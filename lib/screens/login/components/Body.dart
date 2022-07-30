import 'package:flutter/material.dart';
import 'package:kol_flutter/screens/login/components/Background.dart';

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

            Opacity(
              // FORGOT PASSWORD
              opacity: 0.6000000238418579,
              child: Text("FORGOT PASSWORD",
                  style: const TextStyle(
                      color: const Color(0xffb4bbc9),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                  textAlign: TextAlign.left),
            )
          ],
        ),
      ),
    );
  }
}
