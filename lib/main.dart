import 'package:flutter/material.dart';
import 'package:kol_flutter/constants.dart';
import 'package:kol_flutter/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kol Flutter',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}


