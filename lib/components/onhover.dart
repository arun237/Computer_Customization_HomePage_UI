// @dart=2.9
import 'package:computer_customization_homepage_ui/components/moveup.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

extension Onhover on Widget {
  static final appContainer =
      html.window.document.getElementById("app-container");

  Widget get showOnHover {
    return MouseRegion(
      child: this,
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get moveUp {
    return TranslateOnHover(child: this);
  }
}
