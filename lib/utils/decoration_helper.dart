import 'package:flutter/material.dart';

class DecorationHelper {
  DecorationHelper._();
  static DecorationHelper shared = DecorationHelper._();

  setLinerGradientWith({required List<Color> colors}) {
    return LinearGradient(
        begin: Alignment.topRight, end: Alignment.bottomRight, colors: colors);
  }
}
