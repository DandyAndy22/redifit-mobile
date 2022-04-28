import 'package:flutter/material.dart';

class Insets {
  static const double xsmall = 3;
  static const double small = 4;
  static const double medium = 5;
  static const double large = 10;
  static const double extraLarge = 20;
}

class Fonts {
  static const String ebGaramond = 'EB Garamond';
}

class TextStyles {
  static const TextStyle ebGaramond = TextStyle(
    fontFamily: Fonts.ebGaramond,
  );
  static TextStyle buttonText1 =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  static TextStyle buttonText2 =
      const TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
  static TextStyle h1 =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle h2 =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  static late TextStyle body1 =
      ebGaramond.copyWith(color: const Color(0xFF42A5F5));
}
