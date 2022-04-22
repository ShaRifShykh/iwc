import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ConstantColors.main,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: ConstantColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
