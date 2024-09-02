import 'dart:ui';

import 'package:flame/components.dart';

class CardComponent extends PositionComponent {
  final int cardIndex;
  CardComponent(
      {required this.cardIndex,
      required Vector2 size,
      required Vector2 position})
      : super(size: size, position: position);

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
