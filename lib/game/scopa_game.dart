import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:scopa/game/components/card_component.dart';
import 'package:scopa/game/components/mycards.dart';
import 'package:scopa/game/components/opponent.dart';

class ScopaGame extends FlameGame {
  final double width;
  final double height;
  final double aspectRatio;
  final bool isDark;
  ScopaGame(
      {required this.width,
      required this.height,
      required this.aspectRatio,
      required this.isDark})
      : super(camera: CameraComponent());

  @override
  void onMount() {
    debugMode = true;
    super.onMount();
  }

  @override
  Color backgroundColor() => Colors.black;

  @override
  FutureOr<void> onLoad() async {
    const double cardAspectRatio = 0.68;
    double cardWidth = width / 5;
    double cardHeight = cardWidth * (1 / cardAspectRatio);
    const double cardGap = 10;
    Vector2 cardSize = Vector2(cardWidth, cardHeight);
    await Flame.images.load('klondike-sprites.png');

    final myCards = MyCards(
        cardSize: cardSize,
        cardGap: cardGap,
        cardAspectRatio: cardAspectRatio,
        size: Vector2(width / 1.1, cardHeight),
        // position as center of width
        position: Vector2((width / 2) - ((width / 1.1) / 2),
            height - cardHeight - cardGap * 2));
    add(myCards);

    final opponentCards = OpponentCards(
        cardSize: cardSize,
        cardGap: cardGap,
        cardAspectRatio: cardAspectRatio,
        size: Vector2(width / 1.1, cardHeight),
        // position as center of width
        position:
            Vector2((width / 2) - ((width / 1.1) / 2), height * 10 / 100));
    add(opponentCards);

    for (int i = 0; i < 10; i++) {
      const itemsPerRow = 4;

      // Determine the row and column for the current item
      int row = i ~/ itemsPerRow;
      int column = i % itemsPerRow;

      // Calculate the position of each card
      final cardWidth = cardSize.x;
      final cardHeight = cardSize.y;

      // Calculate total width and height of the grid area
      final totalWidth =
          (cardWidth * itemsPerRow) + (cardGap * (itemsPerRow - 1));
      final totalHeight = (cardHeight * 2) + cardGap;

      // Calculate starting position to center the grid on the screen
      final startX = (width - totalWidth) / 2;
      final startY = (height - totalHeight) / 2.2;

      // Calculate the x and y position for the current card
      final xPos = startX + (column * (cardWidth + cardGap));
      final yPos = startY + (row * (cardHeight + cardGap));
      final card = CardComponent(
          cardIndex: i,
          cardSize: cardSize,
          position: Vector2(xPos, yPos),
          intRank: 1,
          intSuit: 1,
          faceUp: true);
      add(card);
    }
    super.onLoad();
  }
}

Sprite klondikeSprite(double x, double y, double width, double height) {
  return Sprite(
    Flame.images.fromCache('klondike-sprites.png'),
    srcPosition: Vector2(x, y),
    srcSize: Vector2(width, height),
  );
}
