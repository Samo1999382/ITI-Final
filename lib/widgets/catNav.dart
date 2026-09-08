import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/screens/ProductsScreen/Products.dart';

class catnav extends StatelessWidget {
  final String text;
  final dynamic dir;
  const catnav({
    super.key,
    required this.text,
    required this.dir
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.only(top: 10, bottom: 10, right: 35, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),
          ),
          GestureDetector(
            child: Text(
              'See All',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6055D8)
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => dir,));
            },
          )
        ],
      ),
    );
  }
}
