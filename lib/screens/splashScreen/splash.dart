import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/screens/NavScreen/Nav.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    // Wait 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) { // Always check if widget is still mounted
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainNavigationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6C6C8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(50), // Use const EdgeInsets
            child: Text(
              'Loading ...',
              style: GoogleFonts.arimo(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}