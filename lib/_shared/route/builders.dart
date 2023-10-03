


import 'package:flutter/material.dart';
import 'package:iospot/_shared/types/builders.dart';

abstract class RouteBuilders {

  RouteBuilders._();

  static RouteBuilder<T> page<T>(WidgetBuilder builder) 
  {
    return (context, settings)
    {
      return MaterialPageRoute<T>(
        settings: settings,
        builder: builder,
      );
    };
  }
}