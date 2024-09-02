import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class NameTextBoxComponent extends TextBoxComponent {
  NameTextBoxComponent({
    required String text,
    required TextPaint textStyle,
    required Anchor anchor,
    required Vector2 position,
  }) : super(
          text: text,
          textRenderer: textStyle,
          anchor: anchor,
          position: position,
          boxConfig: const TextBoxConfig(timePerChar: 0.05),
        );

  @override
  void render(Canvas canvas) {
    super.render(canvas);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
