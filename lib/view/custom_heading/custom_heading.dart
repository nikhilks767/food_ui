import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({super.key, required this.text, required this.trailText});
  final String text;
  final String trailText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.alata(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            trailText,
            style: GoogleFonts.rem(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}
