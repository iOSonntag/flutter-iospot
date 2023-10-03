


import 'package:flutter/material.dart';
import 'package:iospot/_packages/extended_theme/theme_data_extension.dart';

extension ContextExtension on BuildContext {

  EdgeInsets get paddingXS => Theme.of(this).dimensions.paddingXS;
  EdgeInsets get paddingS => Theme.of(this).dimensions.paddingS;
  EdgeInsets get paddingM => Theme.of(this).dimensions.paddingM;
  EdgeInsets get paddingL => Theme.of(this).dimensions.paddingL;
  EdgeInsets get paddingXL => Theme.of(this).dimensions.paddingXL;

}