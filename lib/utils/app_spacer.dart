import 'dart:ffi';

import 'package:flutter/widgets.dart';

class AppSpacer {
  AppSpacer._();

  static addHorizontalSpace({required double of}) {
    return SizedBox(
      width: of,
    );
  }

  static addVerticalSpace({required double of}) {
    return SizedBox(
      height: of,
    );
  }
}
