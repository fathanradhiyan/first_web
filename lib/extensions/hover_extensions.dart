import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:flutter_web/ui/widgets.dart';

extension HoverExtensions on Widget {
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      onEnter: (event) => appContainer!.style.cursor = 'pointer',
      onExit: (event) => appContainer!.style.cursor = 'default',
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }
}
