import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:scopa/game/scopa_game.dart';
import 'package:scopa/themes/theme_manager.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double aspectRatio = width / height;
    bool isDark = ThemeManager().getIsDarkMode();
    final game = ScopaGame(
        width: width, height: height, aspectRatio: aspectRatio, isDark: isDark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager().getTheme(),
      home: Scaffold(
          body: Stack(
        children: [
          GameWidget(game: game),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextButton(
                    onPressed: () {},
                    child:
                        const Text("Rules", style: TextStyle(fontSize: 20)))),
          )
        ],
      )),
    );
  }
}
