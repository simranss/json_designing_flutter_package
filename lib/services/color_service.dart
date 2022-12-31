import 'package:flutter/material.dart';

class ColorService {
  static Color toColor(String hexValue) {
    try {
      if (hexValue.trim().length == 6) {
        return Color(int.parse(hexValue, radix: 16) + 0xFF000000);
      } else if (hexValue.trim().length == 8) {
        return Color(int.parse(hexValue, radix: 16));
      } else {
        print('hexvalue is improper');
        return const Color(0xFFFFFFFF);
      }
    } catch (e) {
      print('exception caught');
      return const Color(0xFFFFFFFF);
    }
  }
}
