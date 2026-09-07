import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class saleWidget extends StatelessWidget {
  const saleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff6055D8)
      ),
      height: 135,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get Winter Discount',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
              Text(
                '\t\t\t 20% Off',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
              Text(
                '\t\t For Children',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
            ],
          ),
          Image.asset('assets/images/saleImage.png')
        ],
      ),
    );
  }
}
