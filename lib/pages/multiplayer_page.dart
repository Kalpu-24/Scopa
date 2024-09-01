import 'package:flutter/material.dart';
import 'package:scopa/pages/name_page.dart';
import 'package:scopa/themes/theme_manager.dart';

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
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NamePage()));
                  },
                  child: const Text('Create Game'),
                ),
              ),
              const SizedBox(height: 50),
              Text("-- OR --",
                  style: TextStyle(
                      fontSize: 20,
                      color:
                          Theme.of(context).appBarTheme.titleTextStyle?.color)),
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
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                ),
                        controller: _codeInput,
                        onChanged: (value) {
                          if (value.length > 6) {
                            _codeInput.text = value.substring(0, 6);
                          }
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
    );
  }
}
