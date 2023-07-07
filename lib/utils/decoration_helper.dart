import 'package:flutter/material.dart';

class DecorationHelper {
  DecorationHelper._();
  static DecorationHelper shared = DecorationHelper._();

  setLinerGradientWith({required List<Color> colors}) {
    return LinearGradient(
        begin: Alignment.topRight, end: Alignment.bottomRight, colors: colors);
  }

  setBannerGradient() {
    return LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.grey.shade50.withOpacity(1),
          Colors.grey.shade50.withOpacity(1),
          Colors.grey.shade50.withOpacity(1),
          Colors.grey.shade50.withOpacity(1),
          Colors.grey.shade50.withOpacity(0.0),
          Colors.grey.shade50.withOpacity(0.0),
          Colors.grey.shade50.withOpacity(0.0),
          Colors.grey.shade50.withOpacity(0.0),
        ]);
  }
}
