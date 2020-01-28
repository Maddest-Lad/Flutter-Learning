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

// Returns A Spacer To Go With A AppBar
Container spacingBar(Color c) {
  return Container(
    constraints:
    BoxConstraints.expand(height: 5, width: double.infinity),
    color: c,
  );
}

// Simplifies Image Display Code
Container displayImage(String name) {
  return Container(
    padding: EdgeInsets.only(top: 20, bottom: 20),
    constraints: BoxConstraints.expand(height: 300),
    alignment: Alignment.center,
    child: Image.asset(name, fit: BoxFit.cover),
  );
}

Container blankSpacer(double height) {
  return Container(
    height: height,
  );
}

Text spectralFont(String text) {
  return Text(
      text,
      style: const TextStyle(
      color: Colors.white,
      fontFamily: 'Spectral',
      fontWeight: FontWeight.bold,
      fontSize: 16)
  );
}
