import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class DepositWithdrawHelper extends ChangeNotifier {
  Widget balanceDisplay({
    required BuildContext context,
    required double balance,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ConstantColors.main,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "\$ $balance",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: ConstantColors.whiteColor,
            ),
          ),
          Text(
            "Total Available Balance in USD",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ConstantColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

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

  Widget historyHeading({required BuildContext context, required String text}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ConstantColors.strokeColor3,
          ),
        ),
      ),
      child: Text("$text History"),
    );
  }
}
