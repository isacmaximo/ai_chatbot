import 'package:flutter/material.dart';

extension ResponsiveContextExtension on BuildContext {
  double get w => MediaQuery.of(this).size.width;

  double get h {
    double initialHeight = MediaQuery.of(this).size.height;
    EdgeInsets padding = MediaQuery.of(this).padding;
    double height = initialHeight - padding.top - padding.bottom;
    return height;
  }

  double get dpi => MediaQuery.of(this).devicePixelRatio;

  double wp(double percentage) {
    return (w * percentage) / 100;
  }

  double hp(double percentage) {
    return (h * percentage) / 100;
  }

  double ar() {
    return w / h;
  }
}
