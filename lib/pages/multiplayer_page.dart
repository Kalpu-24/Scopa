import 'package:flutter/material.dart';
import 'package:scopa/themes/theme_manager.dart';
import 'package:vector_math/vector_math_64.dart';

class MultiPlayerPage extends StatefulWidget {
  const MultiPlayerPage({super.key});

  @override
  State<MultiPlayerPage> createState() => _MultiPlayerPageState();
}

class _MultiPlayerPageState extends State<MultiPlayerPage> {
  final TextEditingController _codeInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeManager().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Play with Friends'),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Rules'),
            ),
            IconButton(
              icon: Icon(ThemeManager().getIsDarkMode()
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              onPressed: () {
                ThemeManager().toggleTheme();
                setState(() {});
              },
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            transform: Matrix4.translation(Vector3(0, -30, 0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.7,
                  height: width * 0.1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Create Game'),
                  ),
                ),
                const SizedBox(height: 50),
                Text("-- OR --",
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context)
                            .appBarTheme
                            .titleTextStyle
                            ?.color)),
                const SizedBox(height: 50),
                SizedBox(
                  width: width * 0.7,
                  height: width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        height: width * 0.1,
                        child: TextFormField(
                          cursorColor:
                              Theme.of(context).textTheme.displaySmall?.color,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                              ),
                          controller: _codeInput,
                          onChanged: (value) {
                            // should not exceed 6 characters and also should not be empty or less than 6 characters or disable the button
                            if (value.length > 6) {
                              _codeInput.text = value.substring(0, 6);
                            }
                            // disable the button

                            setState(() {});
                          },
                          decoration: const InputDecoration(
                            hintText: 'Enter Game Code',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _codeInput.text.length == 6 ? () {} : () {},
                        child: const Text('Join Game'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
