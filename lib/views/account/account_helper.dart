import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class AccountHelper extends ChangeNotifier {
  Widget simpleAccountItem(
      {required BuildContext context,
      required Function() onTap,
      required String text}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ConstantColors.strokeColor,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Icon(
              FontAwesomeIcons.caretRight,
              color: ConstantColors.main,
            )
          ],
        ),
      ),
    );
  }

  Widget accountItemWithCustomWidget({
    required BuildContext context,
    required String text,
    required Widget widget,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ConstantColors.strokeColor,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
