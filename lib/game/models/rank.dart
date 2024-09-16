import 'package:flame/components.dart';
import 'package:scopa/game/scopa_game.dart';

class Rank {
  factory Rank.fromInt(int value) {
    assert(value >= 1 && value <= 10);
    return _singletons[value - 1];
  }

  final int value;
  final String label;
  final Sprite labelSprite;

  Rank._(
      this.value, this.label, double x, double y, double width, double height)
      : labelSprite = klondikeSprite(x, y, width, height);

  static final List<Rank> _singletons = [
    Rank._(1, 'A', 335, 164, 120, 129),
    Rank._(2, '2', 20, 19, 83, 125),
    Rank._(3, '3', 122, 19, 80, 127),
    Rank._(4, '4', 213, 12, 93, 132),
    Rank._(5, '5', 314, 21, 85, 125),
    Rank._(6, '6', 419, 17, 84, 129),
    Rank._(7, '7', 509, 21, 92, 128),
    Rank._(11, 'J', 15, 170, 56, 126),
    Rank._(12, 'Q', 92, 168, 132, 128),
    Rank._(13, 'K', 243, 170, 92, 123),
  ];
}
