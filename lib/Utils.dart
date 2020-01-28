import 'package:flutter/material.dart' show Color;
import 'package:flutter/material.dart';

class HexColor extends Color {

  // Takes in a Hex Color String
  // Returns A Dart Color

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return int.parse("0x$hexColor");
    }
    return null;
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}