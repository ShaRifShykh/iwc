import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class StrokeButton extends StatelessWidget {
  const StrokeButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: ConstantColors.strokeColor2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: ConstantColors.strokeColor2,
            ),
          ),
        ),
      ),
    );
  }
}
