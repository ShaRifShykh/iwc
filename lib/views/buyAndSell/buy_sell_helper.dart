import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class BuySellHelper extends ChangeNotifier {
  Widget rowText({
    required String text1,
    required Color color1,
    required String text2,
    required Color color2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: color1,
          ),
        ),
        Text(
          text2,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: color2,
          ),
        )
      ],
    );
  }

  Widget transactionHistoryHeading({required BuildContext context}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ConstantColors.strokeColor3,
          ),
        ),
      ),
      child: const Text("Transaction History"),
    );
  }
}
