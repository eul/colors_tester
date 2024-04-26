
import 'dart:math';

import 'package:flutter/material.dart';

/// Extensions for [Color]
///
extension ColorExt on Color {

  /// Max range for RGB
  ///
  static const int maxRGBRange = 256;

  /// Generates new random [Color]
  ///
  Color nextRandomColor() {

    final Random random = Random();

    return Color(_hexFromRGB(
      random.nextInt(maxRGBRange),
      random.nextInt(maxRGBRange),
      random.nextInt(maxRGBRange),
      ),
    );
/*
    return Color.fromRGBO(
      random.nextInt(maxRGBRange),
      random.nextInt(maxRGBRange),
      random.nextInt(maxRGBRange),
      1,
    );
 */
  }

  /// returns [Color] which is opposite to the current one
  ///
  Color oppositeColor() {

    return Color.fromRGBO(
      maxRGBRange - red,
      maxRGBRange - green,
      maxRGBRange - blue,
      1,
    );
  }

  /// Builds color hex representation using given RGB int values
  ///
  int _hexFromRGB(int r, int g, int b) {

    final hexRepresentation = int.parse('0xff'
        '${_validRGBValue(r).toRadixString(16)}'
        '${_validRGBValue(g).toRadixString(16)}'
        '${_validRGBValue(b).toRadixString(16)}');

    return hexRepresentation;
  }

  /// Make RGB color value validation and correction
  ///
  int _validRGBValue(int value) {

    final result = (value<0) ? -value : value;

    return result >= maxRGBRange ? maxRGBRange : result;
  }
}
