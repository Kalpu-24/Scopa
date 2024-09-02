import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:scopa/game/components/card_component.dart';
import 'package:scopa/game/components/name_text_box_component.dart';

class MyCards extends PositionComponent {
  MyCards(
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
        position: Vector2(i * (cardSize.x + cardGap), 0),
      );
      add(card);
    }

    double lastCardEnd = (2 * (cardSize.x + cardGap)) + cardSize.x;
    double centerofEmptySpace = ((width - lastCardEnd) / 2) + lastCardEnd;

    // add(TextComponent(
    //     text: 'Insidious',
    //     textRenderer: name,
    //     anchor: Anchor.topLeft,
    //     position: Vector2(centerofEmptySpace, 0)));

    // final name = TextPaint(
    //   style: const TextStyle(
    //     color: Color(0xFFFFFFFF),
    //     fontSize: 15.0,
    //   ),
    // );
    // var text = "Insidious";
    // final textPainter = TextPainter(
    //   text: TextSpan(text: text, style: name.style),
    //   textDirection: TextDirection.ltr,
    // );
    // textPainter.layout();
    // var sizeOfTextBox = Vector2(textPainter.width, textPainter.height);

    // add(NameTextBoxComponent(
    //     text: "Insidious",
    //     textStyle: name,
    //     anchor: Anchor.centerLeft,
    //     position:
    //         Vector2(centerofEmptySpace - (sizeOfTextBox.x / 2), (height / 2))));

    super.onLoad();
  }

  // @override
  // void render(Canvas canvas) {
  //   super.render(canvas);
  // }

  // @override
  // void update(double dt) {
  //   super.update(dt);
  // }
}
