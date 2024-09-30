import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
      decoration: BoxDecoration(
        color: yellow,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: secondary,
          ),
        ),
      ),
    );
  }
}
