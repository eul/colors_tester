
import 'package:colors_tester/ui/components/colored_container_widget.dart';
import 'package:colors_tester/ui/extensions/color_ext.dart';
import 'package:flutter/material.dart';

/// Widget with text in the center and which is able to change it's background
/// color by tapping on it
///
class ColorfulScreenWidget extends StatefulWidget {

  /// Const constructor
  const ColorfulScreenWidget({super.key});

  @override
  State<ColorfulScreenWidget> createState() => _ColorfulScreenWidgetState();
}

class _ColorfulScreenWidgetState extends State<ColorfulScreenWidget> {

  //----------------------------------------------------------------------------
  //                      Properties
  //----------------------------------------------------------------------------
  //region Properties

  /// The whole widget color
  Color _backgroundColor = Colors.white;
  /// Color of the centered text (it should be always visible regardless
  /// of the [_backgroundColor]
  Color _textColor = Colors.black;

  //endregion

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScreenTap,
      child: ColoredContainerWidget(
        backgroundColor: _backgroundColor,
        child: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              color: _textColor,
              fontSize: 28,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

  //----------------------------------------------------------------------------
  //                      Private methods
  //----------------------------------------------------------------------------
  //region Private methods

  void _onScreenTap() {

    _updateColors();
  }

  void _updateColors() {

    final newColor = _backgroundColor.nextRandomColor();

    setState(() {
      _backgroundColor = newColor;

      _textColor = newColor.oppositeColor();
    });
  }
  //endregion
}
