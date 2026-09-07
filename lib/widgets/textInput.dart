import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textInput extends StatefulWidget {
  final String text;
  final String hint;
  final bool suf;

  const textInput({
    super.key,
    required this.text,
    required this.hint,
    this.suf = false,
  });

  @override
  State<textInput> createState() => _TextInputState();
}

class _TextInputState extends State<textInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: widget.suf ? _obscureText : false,
          decoration: InputDecoration(
            suffixIcon: widget.suf
                ? IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
            )
                : null,
            hintText: widget.hint,
            hintStyle: GoogleFonts.roboto(
              color: const Color(0x7f000000),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xffBFB8B8),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xffBFB8B8),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xff6055D8),
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }
}