import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/routing/route_names.dart';
import 'package:flutter_web/ui/views.dart';

PageRoute generateRoute(RouteSettings? settings) {
  switch (settings!.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case AboutRoute:
      return _getPageRoute(const AboutView());
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView());
    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child}):
      super(
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation,
        ) => child,
        transitionsBuilder: (
        BuildContext context,
            Animation<double> animation, Animation<double> secondaryAnimation, Widget child,
        ) => FadeTransition(opacity: animation, child: child,)
      );
}