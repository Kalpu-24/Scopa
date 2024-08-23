import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translation(Vector3(0, -50, 0)),
      child: Column(
        children: [
          Text(
            'SCOPA',
            style: GoogleFonts.oi(
                fontSize: 60,
                fontWeight: FontWeight.w100,
                color: Theme.of(context).appBarTheme.titleTextStyle?.color),
          ),
          Container(
            transform: Matrix4.translation(Vector3(0, -10, 0)),
            child: Text(
              'Sweep all you want!',
              style: GoogleFonts.rakkas(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).appBarTheme.titleTextStyle?.color),
            ),
          ),
        ],
      ),
    );
  }
}
