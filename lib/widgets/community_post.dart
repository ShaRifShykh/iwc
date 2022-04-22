import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';

class CommunityPost extends StatelessWidget {
  const CommunityPost({
    Key? key,
    required this.profileImg,
    required this.username,
    required this.postImg,
    required this.likes,
    required this.icons,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final String profileImg;
  final String username;
  final String postImg;
  final int likes;
  final IconData icons;
  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ConstantColors.whiteColor,
        border: Border.all(
          color: ConstantColors.strokeColor3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ConstantColors.strokeColor3,
                ),
              ),
            ),
            child: Row(
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
                const SizedBox(width: 5),
                Text(
                  username,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.fontColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 130),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: ConstantColors.strokeColor3,
                ),
              ),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => onTap(),
                  child: Icon(
                    icons,
                    color: color,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "$likes Likes",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
