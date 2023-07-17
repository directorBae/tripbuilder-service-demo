import 'package:flutter/material.dart';

class AppColor {
  const AppColor._();

  // static const backgroundColor = Color(0xFF000000);
  static const backgroundColor = Color(0xFF24016E);
  static const backgroundGradient1 = Color(0xFF5203FB);
  static const backgroundGradient2 = Color(0xFF24016E);
  static const backgroundGradient3 = Color(0xFF000000);
  static const backgroundGradient4 = Color(0xFF0071C3);
  static const mainColor = Colors.blue;

}


BoxDecoration backgroundGradient = const BoxDecoration(
  gradient: LinearGradient(
  colors: [
    AppColor.backgroundGradient1,
    AppColor.backgroundGradient2,
    AppColor.backgroundGradient3,
    AppColor.backgroundGradient4,
  ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);