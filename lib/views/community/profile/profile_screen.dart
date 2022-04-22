import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/widgets/community_post.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: ConstantColors.greyColor2,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  color: ConstantColors.whiteColor,
                  size: 100,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "@aixelstriker",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ConstantColors.fontColor,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "My Posts",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.main,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.solidHeart,
                onTap: () {},
                color: ConstantColors.main,
              ),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker2",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.heart,
                onTap: () {},
                color: ConstantColors.fontColor,
              ),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker2",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.solidHeart,
                onTap: () {},
                color: ConstantColors.main,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
