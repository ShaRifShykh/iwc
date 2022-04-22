import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class KeyboardNumber extends StatelessWidget {
  const KeyboardNumber({Key? key, required this.n, required this.onPressed})
      : super(key: key);

  final int n;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: ConstantColors.black,
          ),
        ),
        child: Center(
          child: Text(
            "$n",
            style: GoogleFonts.poppins(
              fontSize: 26 * MediaQuery.of(context).textScaleFactor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
