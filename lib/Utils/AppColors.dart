import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.white;
  static const List<Color> primaryGradientColor = [
    Color.fromRGBO(129, 251, 184, 1),
    Color.fromRGBO(40, 199, 111, 1)
  ];
  static const List<Color> secondaryGradientColor = [
    Color.fromRGBO(247, 97, 161, 1),
    Color.fromRGBO(115, 103, 240, 1)
  ];

  static const Color baseColor = Color(0xff3B4DA1);
  static const Color colorWhite = Colors.white;
  static const Color colorBlack = Colors.black;
  static const Color colorRed = Colors.red;
  static const Color colorGreen = Colors.green;
  static const Color colorGrey = Color(0xffC4C4C4);
  Color colorGreyOp = Color(0xffC4C4C4).withOpacity(0.2);
}
