import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsetsGeometry.all(50),
          child: Text(
              'Loading ...',
              style:GoogleFonts.arimo(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          )
        ],
      ),
      backgroundColor: Color(0xffC6C6C8),
    );
  }
}
