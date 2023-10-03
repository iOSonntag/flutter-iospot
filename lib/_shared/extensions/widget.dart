


import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {

  Widget expanded({int flex = 1})
  {
    return Expanded(
      flex: flex,
      child: this,
    );
  }
}