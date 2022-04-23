import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class WalletHelper extends ChangeNotifier {
  Widget manageWalletItem({
    required BuildContext context,
    required String img,
    required String text,
    required bool switchVal,
    required Function onChanged,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
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
          Row(
            children: [
              Image.asset(
                img,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          CupertinoSwitch(
            activeColor: ConstantColors.main,
            value: switchVal,
            onChanged: (value) {
              onChanged(value);
            },
          ),
        ],
      ),
    );
  }

  Widget textField({required BuildContext context, required String hintText}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.strokeColor3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              color: ConstantColors.fontColor2,
            )),
      ),
    );
  }
}
