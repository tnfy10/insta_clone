import 'dart:math';
import 'dart:ui';

class RandomColor {
  static const _alpha = 255;
  static const _maxColorValue = 255;

  static Color getColor() {
    int r = Random().nextInt(_maxColorValue);
    int g = Random().nextInt(_maxColorValue);
    int b = Random().nextInt(_maxColorValue);

    return Color.fromARGB(_alpha, r, g, b);
  }
}