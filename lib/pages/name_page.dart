import 'package:flutter/material.dart';
import 'package:scopa/pages/game_page.dart';
import 'package:scopa/themes/theme_manager.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  final TextEditingController _codeInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager().getTheme(),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.7,
                height: width * 0.1,
                child: TextFormField(
                  cursorColor: Theme.of(context).textTheme.displaySmall?.color,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                      ),
                  controller: _codeInput,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: width * 0.7,
                height: width * 0.1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GamePage()));
                  },
                  child: const Text('Start Game'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
