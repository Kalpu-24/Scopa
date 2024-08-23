import 'package:flutter/material.dart';
import 'package:scopa/components/home_title.dart';
import 'package:scopa/pages/multiplayer_page.dart';
import 'package:scopa/themes/theme_manager.dart';
import 'package:vector_math/vector_math_64.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isDarkMode = ThemeManager().getIsDarkMode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scopa'),
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Rules'),
            ),
            IconButton(
              icon: Icon(_isDarkMode
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              onPressed: () {
                ThemeManager().toggleTheme();
                setState(() {});
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HomeTitle(),
              Container(
                transform: Matrix4.translation(Vector3(0, -50, 0)),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MultiPlayerPage()));
                        },
                        child: const Text('Start Game'),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
