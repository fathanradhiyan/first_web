import 'dart:ui';

import 'package:flutter/material.dart';

part 'theme.dart';
part 'shared_image.dart';
part 'shared_string.dart';

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T>? route,
      BuildContext? context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget? child,
      ) {
    // only return the child without warping it with animations
    return child!;
  }
}