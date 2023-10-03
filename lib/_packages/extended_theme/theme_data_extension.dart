



import 'package:flutter/material.dart';
import 'package:iospot/_packages/extended_theme/dimensions_theme_data.dart';

// TODO: add ExtendedTheme class to be able to set those values

// ignore: invalid_use_of_visible_for_testing_member
final WeakMap<ThemeData, DimensionsThemeData> _dimensionsThemeData = WeakMap();

extension ThemeDataExtension on ThemeData {

  DimensionsThemeData get dimensions 
  {
    DimensionsThemeData? data = _dimensionsThemeData[this];

    if (data != null) return data;

    final dimensions = DimensionsThemeData();

    _dimensionsThemeData[this] = dimensions;

    return dimensions;
  }

}