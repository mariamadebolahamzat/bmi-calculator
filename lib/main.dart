import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalc());

class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Splash(),
    );
  }
}
