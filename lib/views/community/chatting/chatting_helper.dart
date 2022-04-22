import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class ChattingHelper extends ChangeNotifier {
  Widget searchUserTextField({
    required BuildContext context,
    required Function onTap,
    required TextEditingController textEditingController,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
            child: InkWell(
              onTap: () => onTap(),
              child: const Icon(
                Icons.search,
                color: ConstantColors.greyColor2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search User",
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: ConstantColors.fontColor,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget users({
    required BuildContext context,
    required Function onTap,
    required String username,
    required String lastMessageTime,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: ConstantColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ConstantColors.strokeColor3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
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
                const SizedBox(width: 10),
                Text(
                  username,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.fontColor,
                  ),
                ),
              ],
            ),
            Text(
              lastMessageTime,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ConstantColors.fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget message({
    required String username,
    required String messageSendAt,
    required String message,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tileColor: ConstantColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: ConstantColors.strokeColor3,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              username,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              messageSendAt,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: ConstantColors.fontColor,
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            message,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: ConstantColors.fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
