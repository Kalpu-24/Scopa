import 'package:flame/components.dart';

class OpponentCards extends PositionComponent {
  OpponentCards(
      {required this.cardSize,
      required this.cardGap,
      required this.cardAspectRatio,
      super.position,
      super.size});

  final Vector2 cardSize;
  final double cardGap;
  final double cardAspectRatio;

  @override
  bool get debugMode => true;
}
