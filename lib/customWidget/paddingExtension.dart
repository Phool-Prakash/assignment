import 'dart:math';

import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  ///Add uniform padding around the Widget
  Widget padAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  ///Adds symmetric vertical and horizontal padding to the widget.
  Widget padSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  ///Add padding only(left,right,top and bottom)
  Widget padOnly(
          {double top = 0.0,
          double bottom = 0.0,
          double left = 0.0,
          double right = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
        child: this,
      );
}

///Adds uniform margin around the widget
extension MarginExtension on Widget {
  Widget marginAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );

  ///Adds symmetric vertical and horizontal margins to the widget
  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Container(
        margin:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}
