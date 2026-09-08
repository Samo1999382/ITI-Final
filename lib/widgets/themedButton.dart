import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themedButton extends StatelessWidget {
  final String text;
  final double rad;
  final dynamic dir;
  const themedButton({
    super.key,
    required this.text,
    this.rad = 20,
    this.dir
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        if (dir != null){
          Navigator.push(context, MaterialPageRoute(builder: (context) => dir),);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff6055D8),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        maximumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rad),
        ),
      ),
      child: Text(
          text,
        style: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
