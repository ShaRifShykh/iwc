import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHelper extends ChangeNotifier {
  Widget title({required String title, required double size}) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
