import 'dart:ui';

import 'package:flame/components.dart';
import 'package:scopa/game/models/rank.dart';
import 'package:scopa/game/models/suit.dart';
import 'package:scopa/game/scopa_game.dart';

class CardComponent extends PositionComponent {
  final int cardIndex;
  CardComponent({
    required this.cardIndex,
    required Vector2 cardSize,
    required Vector2 position,
    required int intRank,
    required int intSuit,
    required bool faceUp,
  })  : rank = Rank.fromInt(intRank),
        suit = Suit.fromInt(intSuit),
        _cardSize = cardSize,
        _faceUp = faceUp,
        super(size: cardSize, position: position);

  final Rank rank;
  final Suit suit;
  final Vector2 _cardSize;
  bool _faceUp;

  bool get isFaceUp => _faceUp;
  bool get isFaceDown => !_faceUp;
  void flip() => _faceUp = !_faceUp;

  @override
  String toString() =>
      'CardComponent(rank: $rank, suit: $suit, faceUp: $_faceUp)';

  @override
  void render(Canvas canvas) {
    if (_faceUp) {
      _renderFront(canvas);
    } else {
      _renderBack(canvas);
    }
  }

  static final Paint backBackgroundPaint = Paint()
    ..color = const Color(0xff380c02);
  static final Paint backBorderPaint1 = Paint()
    ..color = const Color(0xffdbaf58)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1;
  static final Paint backBorderPaint2 = Paint()
    ..color = const Color(0x5CEF971B)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

  static final Sprite flameSprite = klondikeSprite(1367, 6, 357, 501);

  void _renderBack(Canvas canvas) {
    final RRect cardRRect = RRect.fromRectAndRadius(
      _cardSize.toRect(),
      const Radius.circular(24),
    );
    final RRect backRRectInner = cardRRect.deflate(40);
    canvas.drawRRect(cardRRect, backBackgroundPaint);
    canvas.drawRRect(cardRRect, backBorderPaint1);
    canvas.drawRRect(backRRectInner, backBorderPaint2);
    flameSprite.render(canvas,
        position: size / 2, anchor: Anchor.center, size: _cardSize / 4);
  }

  static final Paint frontBackgroundPaint = Paint()
    ..color = const Color(0xff000000);
  static final Paint redBorderPaint = Paint()
    ..color = const Color(0xffece8a3)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;
  static final Paint blackBorderPaint = Paint()
    ..color = const Color(0xff7ab2e8)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;

  static final Sprite redJack = klondikeSprite(81, 565, 562, 488);
  static final Sprite redQueen = klondikeSprite(717, 541, 486, 515);
  static final Sprite redKing = klondikeSprite(1305, 532, 407, 549);

  static final blueFilter = Paint()
    ..colorFilter = const ColorFilter.mode(
      Color(0x880d8bff),
      BlendMode.srcATop,
    );
  static final Sprite blackJack = klondikeSprite(81, 565, 562, 488)
    ..paint = blueFilter;
  static final Sprite blackQueen = klondikeSprite(717, 541, 486, 515)
    ..paint = blueFilter;
  static final Sprite blackKing = klondikeSprite(1305, 532, 407, 549)
    ..paint = blueFilter;

  void _renderFront(Canvas canvas) {
    final RRect cardRRect = RRect.fromRectAndRadius(
      _cardSize.toRect(),
      const Radius.circular(24),
    );
    cardRRect.deflate(40);
    canvas.drawRRect(cardRRect, frontBackgroundPaint);
    canvas.drawRRect(
      cardRRect,
      suit.isHeart ? redBorderPaint : blackBorderPaint,
    );
  }
}
