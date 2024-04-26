
import 'package:flutter/material.dart';

/// Container widget with provided background color and child
///  * [backgroundColor], a background color for the container
///  * [child] it's child widget
///
class ColoredContainerWidget extends StatelessWidget {

  /// background color for the container;
  final Color backgroundColor;
  /// child widget;
  final Widget child;

  ///Const constructor
  const ColoredContainerWidget({
    required this.backgroundColor,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: child,
    );
  }
}
