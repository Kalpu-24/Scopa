import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:scopa/game/scopa_game.dart';

@immutable
class Suit {
  factory Suit.fromInt(int Index) {
    assert(Index >= 0 && Index <= 3);
    return _singletons[Index];
  }

  final int value;
  final String label;
  final Sprite sprite;

  Suit._(
      this.value, this.label, double x, double y, double width, double height)
      : sprite = klondikeSprite(x, y, width, height);

  static final List<Suit> _singletons = [
    Suit._(0, '♥', 1176, 17, 172, 183),
    Suit._(1, '♦', 973, 14, 177, 182),
    Suit._(2, '♣', 974, 226, 184, 172),
    Suit._(3, '♠', 1178, 220, 176, 182),
  ];

  bool get isHeart => value == 0;
  bool get isDiamond => value == 1;
  bool get isClub => value == 2;
  bool get isSpade => value == 3;
}
