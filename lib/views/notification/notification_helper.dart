import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class NotificationHelper extends ChangeNotifier {
  Widget notificationItem({
    required BuildContext context,
    required String title,
    required String time,
    required String description,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ConstantColors.strokeColor,
            width: 0.3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: ConstantColors.fontColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: ConstantColors.fontColor,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
