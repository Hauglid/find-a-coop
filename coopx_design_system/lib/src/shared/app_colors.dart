import 'package:flutter/material.dart';

class AColor {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AColor._();

  static const Color black = Colors.black;
  static const Color blue = Color(0xFF003366);
  static const Color blueLight = Color(0xFFD2FEFF);
  static const Color border = Color(0xFFECECEC);
  static const Color borderDark = Color(0xFFCCCCCC);
  static const Color green = Color(0xff22A45D);
  static const Color greenDark = Color(0xFF00E28F);
  static const Color greenLight = Color(0xff22A45D);
  static const Color grey = Color(0xFFCCCCCC);
  static const Color greyLight = Color(0xffe5e5e5);
  static const Color pink = Color(0xFFFFB7B6);
  static const Color pinkLight = Color(0xFFFFE2E2);
  static const Color primary = blue;
  static const Color red = Color(0xFFFB002E);
  static const Color turquoise = Color(0xFF9FFFFF);
  static const Color white = Colors.white;
}

ThemeData themeData(Brightness mode) => ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        brightness: mode,
        seedColor: AColor.primary,
        primary: mode == Brightness.light ? AColor.primary : null,
      ),
      useMaterial3: true,
    ).copyWith(visualDensity: VisualDensity.standard);
