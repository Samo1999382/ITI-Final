import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themedButton extends StatelessWidget {
  final String text;
  final double rad;
  final dynamic dir;
  final VoidCallback? onTap;
  final bool isLoading;

  const themedButton({
    super.key,
    required this.text,
    this.rad = 20,
    this.dir,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading
          ? null
          : () {
        if (onTap != null) {
          onTap!();
        } else if (dir != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dir),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff6055D8),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        maximumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rad),
        ),
      ),
      child: isLoading
          ? const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      )
          : Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}