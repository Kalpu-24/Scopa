import 'package:flame/components.dart';

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

  // @override
  // void render(Canvas canvas) {
  //   super.render(canvas);
  // }

  // @override
  // void update(double dt) {
  //   super.update(dt);
  // }
}
