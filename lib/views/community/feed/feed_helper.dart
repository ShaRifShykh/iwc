import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class FeedHelper extends ChangeNotifier {
  Widget postTextField({required TextEditingController textEditingController}) {
    return Container(
      decoration: BoxDecoration(
        color: ConstantColors.whiteColor,
        border: Border.all(
          color: ConstantColors.strokeColor3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: ConstantColors.greyColor2,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color: ConstantColors.whiteColor,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "What's on your mind?",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.camera_alt,
              color: ConstantColors.greyColor2,
            ),
          ),
        ],
      ),
    );
  }
}
