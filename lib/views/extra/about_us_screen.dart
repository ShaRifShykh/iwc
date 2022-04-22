import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        centerTitle: true,
        title: Text(
          "About Us",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: ConstantColors.black,
          ),
        ),
      ),
    );
  }
}
