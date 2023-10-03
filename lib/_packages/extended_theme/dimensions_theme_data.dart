


import 'package:flutter/material.dart';

class DimensionsThemeData {

  DimensionsThemeData({
    this.spaceXS = 4.0,
    this.spaceS = 8.0,
    this.spaceM = 16.0,
    this.spaceL = 24.0,
    this.spaceXL = 32.0,
    this.radiusS = 8.0,
    this.radiusM = 20.0,
    this.radiusL = 36.0,
  });

  final double spaceXS;
  final double spaceS;
  final double spaceM;
  final double spaceL;
  final double spaceXL;

  final double radiusS;
  final double radiusM;
  final double radiusL;

  EdgeInsets get paddingXS => EdgeInsets.all(spaceXS);
  EdgeInsets get paddingS => EdgeInsets.all(spaceS);
  EdgeInsets get paddingM => EdgeInsets.all(spaceM);
  EdgeInsets get paddingL => EdgeInsets.all(spaceL);
  EdgeInsets get paddingXL => EdgeInsets.all(spaceXL);

  EdgeInsets paddingXSOnly({bool left = false, bool top = false, bool right = false, bool bottom = false}) => _edgeInsetsValueOnly(spaceXS, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingSOnly({bool left = false, bool top = false, bool right = false, bool bottom = false}) => _edgeInsetsValueOnly(spaceS, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingMOnly({bool left = false, bool top = false, bool right = false, bool bottom = false}) => _edgeInsetsValueOnly(spaceM, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingLOnly({bool left = false, bool top = false, bool right = false, bool bottom = false}) => _edgeInsetsValueOnly(spaceL, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingXLOnly({bool left = false, bool top = false, bool right = false, bool bottom = false}) => _edgeInsetsValueOnly(spaceXL, left: left, top: top, right: right, bottom: bottom);

  EdgeInsets paddingXSOverwrite({double? left, double? top, double? right, double? bottom}) => _edgeInsetsValueOverwrite(spaceXS, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingSOverwrite({double? left, double? top, double? right, double? bottom}) => _edgeInsetsValueOverwrite(spaceS, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingMOverwrite({double? left, double? top, double? right, double? bottom}) => _edgeInsetsValueOverwrite(spaceM, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingLOverwrite({double? left, double? top, double? right, double? bottom}) => _edgeInsetsValueOverwrite(spaceL, left: left, top: top, right: right, bottom: bottom);
  EdgeInsets paddingXLOverwrite({double? left, double? top, double? right, double? bottom}) => _edgeInsetsValueOverwrite(spaceXL, left: left, top: top, right: right, bottom: bottom);

  EdgeInsets _edgeInsetsValueOnly(double value, {bool left = false, bool top = false, bool right = false, bool bottom = false}) => EdgeInsets.only(
    left: left ? value : 0,
    top: top ? value : 0,
    right: right ? value : 0,
    bottom: bottom ? value : 0,
  );

  EdgeInsets _edgeInsetsValueOverwrite(double value, {double? left, double? top, double? right, double? bottom}) => EdgeInsets.only(
    left: left ?? value,
    top: top ?? value,
    right: right ?? value,
    bottom: bottom ?? value,
  );



  BorderRadius get borderRadiusS => BorderRadius.circular(radiusS);
  BorderRadius get borderRadiusM => BorderRadius.circular(radiusM);
  BorderRadius get borderRadiusL => BorderRadius.circular(radiusL);

}