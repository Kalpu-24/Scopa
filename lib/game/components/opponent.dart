import 'package:flame/components.dart';
import 'package:scopa/game/components/card_component.dart';

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

  @override
  void onLoad() {
    for (int i = 0; i < 3; i++) {
      final card = CardComponent(
        size: cardSize,
        cardIndex: i,
        position: Vector2(width - cardSize.x - (i * (cardSize.x + cardGap)), 0),
      );
      add(card);
    }
    super.onLoad();
  }
}
